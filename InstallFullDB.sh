#!/bin/bash

####################################################################################################
#
#   Simple helper script to insert clean YTDB
#   thx all user's & admin's WoTLK-DB for work on original script
#   modified
#
####################################################################################################

# need to be changed on each official DB/CORE release
FULLDB_FILE_ZIP="YTDB_0.15.0_R662_cMaNGOS_R14017_RuDB_R70.sql.gz"
FULLDB_FILE=${FULLDB_FILE_ZIP%.gz}
DB_TITLE="YTDB_0.15.0_R662"
NEXT_MILESTONES="0.19 0.20"

# internal use
SCRIPT_FILE="InstallFullDB.sh"
CONFIG_FILE="InstallFullDB.config"

# testing only
ADDITIONAL_PATH=""

# variables assigned and read from $CONFIG_FILE
DB_HOST="localhost"
DB_PORT="3306"
DATABASE=""
USERNAME=""
PASSWORD=""
MYSQL=""
DEV_UPDATES="NO"
FORCE_WAIT="YES"
OPTIMIZE="YES"

function create_config {
# Re(create) config file
cat >  $CONFIG_FILE << EOF
####################################################################################################
# This is the config file for the '$SCRIPT_FILE' script
#
# You need to insert
#   DB_HOST:      Host on which the database resides
#   DB_PORT:      Port on which the database is running
#   DATABASE:     Your database
#   USERNAME:     Your username
#   PASSWORD:     Your password
#   MYSQL:        Your mysql command (usually mysql)
#
####################################################################################################

## Define the host on which the mangos database resides (typically localhost)
DB_HOST="localhost"

## Define the port on which the mangos database is running (typically 3306)
DB_PORT="3306"

## Define the database in which you want to add clean YTDB
DATABASE="wotlkmangos"

## Define your username
USERNAME="mangos"

## Define your password (It is suggested to restrict read access to this file!)
PASSWORD="mangos"

## Define your mysql programm if this differs
MYSQL="mysql"

## Define if you want to wait a bit before applying the full database
FORCE_WAIT="YES"

## Define if the 'dev' directory for processing development SQL files needs to be used
## Set the variable to "YES" to use the dev directory
DEV_UPDATES="NO"

## Enjoy using the tool
OPTIMIZE="NO"
EOF
}

function display_help {
echo
echo "Welcome to the YTDB helper $SCRIPT_FILE"
echo
echo "Run this tool from a bash compatible terminal (on windows like Git Bash)"
echo
echo "To configure edit the file $CONFIG_FILE"
echo
}

# Check if config file present
if [ ! -f $CONFIG_FILE ]
then
  create_config
  display_help
  exit 1
fi

. $CONFIG_FILE
export MYSQL_PWD="$PASSWORD"
MYSQL_COMMAND="$MYSQL -h$DB_HOST -P$DB_PORT -u$USERNAME $DATABASE"

# Print header
echo
echo "Welcome to the YTDB helper $SCRIPT_FILE"
echo

if [ "$FORCE_WAIT" != "NO" ]
then
  echo "ATTENTION: Your database $DATABASE will be reset to YTDB!"
  echo "Please bring your repositories up-to-date!"
  echo "Press CTRL+C to exit"
  # show a mini progress bar
  for i in {1..10}
  do
   echo -ne .
   sleep 1
  done
  echo .
fi

# Full Database
echo "> Processing YTDB database $DB_TITLE ..."
echo "  - Unziping $FULLDB_FILE_ZIP"
gzip -kdf "${ADDITIONAL_PATH}Full_DB/$FULLDB_FILE_ZIP"
if [[ $? != 0 ]]
then
  echo "ERROR: cannot unzip ${ADDITIONAL_PATH}Full_DB/$FULLDB_FILE_ZIP"
  echo "GZIP 1.6 or greater should be installed"
  exit 1
fi
echo "  - Applying $FULLDB_FILE"
$MYSQL_COMMAND < "${ADDITIONAL_PATH}Full_DB/$FULLDB_FILE"
if [[ $? != 0 ]]
then
  echo "ERROR: cannot apply ${ADDITIONAL_PATH}Full_DB/$FULLDB_FILE"
  exit 1
fi
echo "  $DB_TITLE is applied!"
echo
echo

# Updates
echo "> Processing database updates ..."
COUNT=0
for UPDATE in "${ADDITIONAL_PATH}Updates/"[0-9]*.sql
do
  if [ -e "$UPDATE" ]
  then
    echo "    Appending $UPDATE"
    $MYSQL_COMMAND < "$UPDATE"
    if [[ $? != 0 ]]
    then
      echo "ERROR: cannot apply $UPDATE"
      exit 1
    fi
    ((COUNT++))
  fi
done
if [ "$COUNT" != 0 ]
then
  echo "  $COUNT DB updates applied successfully"
else
  echo "  Did not find any new DB update to apply"
fi
echo
echo

# Instances
echo "> Processing instance files ..."
COUNT=0
for INSTANCE in "${ADDITIONAL_PATH}Updates/Instances/"[0-9]*.sql
do
  if [ -e "$INSTANCE" ]
  then
    echo "    Appending $INSTANCE"
    $MYSQL_COMMAND < "$INSTANCE"
    if [[ $? != 0 ]]
    then
      echo "ERROR: cannot apply $INSTANCE"
      exit 1
    fi
    ((COUNT++))
  fi
done
if [ "$COUNT" != 0 ]
then
  echo "  $COUNT Instance files applied successfully"
else
  echo "  Did not find any instance file to apply"
fi
echo
echo

# Core updates
echo "> Processing database Core updates ..."
COUNT=0
for UPDATE in "${ADDITIONAL_PATH}Updates/mangos/"[0-9]*.sql
do
  if [ -e "$UPDATE" ]
  then
    echo "    Appending $UPDATE"
    $MYSQL_COMMAND < "$UPDATE"
    if [[ $? != 0 ]]
    then
      echo "ERROR: cannot apply $UPDATE"
      exit 1
    fi
    ((COUNT++))
  fi
done
if [ "$COUNT" != 0 ]
then
  echo "  $COUNT Core updates applied successfully"
else
  echo "  Did not find any new Core update to apply"
fi
echo
echo

# Apply dbc folder
echo "> Trying to apply ${ADDITIONAL_PATH}Updates/mangos/base/dbc/original_data ..."
for f in "${ADDITIONAL_PATH}Updates/mangos/base/dbc/original_data/"*.sql
do
  echo "    Appending DBC file update `basename $f` to database $DATABASE"
  $MYSQL_COMMAND < $f
  if [[ $? != 0 ]]
  then
    echo "ERROR: cannot apply $f"
    exit 1
  fi
done
echo "  DBC datas successfully applied"
echo
echo

# Apply dbc changes (specific fixes to known wrong/missing data)
echo "> Trying to apply ${ADDITIONAL_PATH}Updates/mangos/base/dbc/cmangos_fixes ..."
for f in "${ADDITIONAL_PATH}Updates/mangos/base/dbc/cmangos_fixes/"*.sql
do
  echo "    Appending CMaNGOS DBC file fixes `basename $f` to database $DATABASE"
  $MYSQL_COMMAND < $f
  if [[ $? != 0 ]]
  then
    echo "ERROR: cannot apply $f"
    exit 1
  fi
done
echo "  DBC changes successfully applied"
echo
echo

# Apply ScriptDev2 data
echo "> Trying to apply ${ADDITIONAL_PATH}Updates/mangos/scriptdev2 ..."
for f in "${ADDITIONAL_PATH}Updates/mangos/scriptdev2/"*.sql
do
  echo "    Appending SD2 file update `basename $f` to database $DATABASE"
  $MYSQL_COMMAND < $f
  if [[ $? != 0 ]]
  then
    echo "ERROR: cannot apply $f"
    exit 1
  fi
done
echo "  ScriptDev2 data successfully applied"
echo
echo

# Apply acid_wotlk.sql
echo "> Trying to apply ${ADDITIONAL_PATH}ACID/acid_wotlk.sql ..."
$MYSQL_COMMAND < ${ADDITIONAL_PATH}ACID/acid_wotlk.sql
if [[ $? != 0 ]]
then
  echo "ERROR: cannot apply ${ADDITIONAL_PATH}ACID/acid_wotlk.sql"
  exit 1
fi
echo "  ACID successfully applied"
echo
echo

# Apply cmangos utilites
echo "> Trying to apply ${ADDITIONAL_PATH}utilities ..."
for f in "${ADDITIONAL_PATH}utilities/"*.sql
do
  echo "    Appending utilites file update `basename $f` to database $DATABASE"
  $MYSQL_COMMAND < $f
  if [[ $? != 0 ]]
  then
    echo "ERROR: cannot apply $f"
    exit 1
  fi
done
echo "  Utilites data successfully applied"
echo
echo

# locales
echo "> Trying to apply ${ADDITIONAL_PATH}Updates/Locales ..."
for f in "${ADDITIONAL_PATH}Updates/Locales/"*.sql
do
  echo "    Appending Locales file update `basename $f` to database $DATABASE"
  $MYSQL_COMMAND < $f
  if [[ $? != 0 ]]
  then
    echo "ERROR: cannot apply $f"
    exit 1
  fi
done
echo "  Locales datas successfully applied"
echo
echo

#    DEVELOPERS UPDATES
if [ "$DEV_UPDATES" == "YES" ]
then
  echo "> Trying to apply development updates ..."
  for UPDATEFILE in ${ADDITIONAL_PATH}dev/*.sql
  do
    if [ -e "$UPDATEFILE" ]
    then
        for UPDATE in ${ADDITIONAL_PATH}dev/*.sql
        do
            echo "    process update $UPDATE"
            $MYSQL_COMMAND < $UPDATE
            [[ $? != 0 ]] && exit 1
        done
        echo "  Development updates applied"
    else
        echo "  No development update to process"
    fi
    break
  done
  for UPDATEFILE in ${ADDITIONAL_PATH}dev/*/*.sql
  do
    if [ -e "$UPDATEFILE" ]
    then
        for UPDATE in ${ADDITIONAL_PATH}dev/*/*.sql
        do
            echo "    process update $UPDATE"
            $MYSQL_COMMAND < $UPDATE
            [[ $? != 0 ]] && exit 1
        done
        echo "  Development subupdates applied"
    else
        echo "  No development subupdate to process"
    fi
    break
  done
  echo
  echo
fi

# Tables optimize
if [ "$OPTIMIZE" == "YES" ]
then
  echo "> Trying to apply ${ADDITIONAL_PATH}Tools/optimize.sql ..."
  $MYSQL_COMMAND < ${ADDITIONAL_PATH}Tools/optimize.sql
  if [[ $? != 0 ]]
  then
    echo "ERROR: cannot apply ${ADDITIONAL_PATH}Tools/optimize.sql"
    exit 1
  fi
    echo
    echo "  Optimize database successfully applied"
else
    echo "  No optimize update to process"
fi
echo
echo

echo "You have now a clean and recent YTDB database loaded into $DATABASE"
echo
if [ "$FORCE_WAIT" != "NO" ]
then
  # show a mini progress bar
  for i in {1..10}
  do
   echo -ne .
   sleep 1
  done
  echo .
fi

echo "Enjoy using YTDB"
echo

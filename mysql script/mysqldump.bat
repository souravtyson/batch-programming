
set /a PASSWORD=''
::HOST=XXXXXX
set /a USER=root
set /a DATABASE=avekshaa_ci
set /a DB_FILE=dump.sql
set /a EXCLUDED_TABLES=(licenseinfo,auth,adminauth)

set /a IGNORED_TABLES_STRING=''
for TABLE in "${EXCLUDED_TABLES[@]}"
do :
   IGNORED_TABLES_STRING+=" --ignore-table=${DATABASE}.${TABLE}"
done

echo "Dump structure"
mysqldump --user=${USER} --password=${PASSWORD} --single-transaction --no-data ${DATABASE} > ${DB_FILE}

::echo "Dump content"
::mysqldump --host=${HOST} --user=${USER} --password=${PASSWORD} ${DATABASE} ${IGNORED_TABLES_STRING} >> ${DB_FILE}
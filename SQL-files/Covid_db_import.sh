# mysql --user root -p -e  'DROP DATABASE IF EXISTS NYT_Covid;'

# mysql --user root -p -e 'CREATE DATABASE IF NOT EXISTS NYT_Covid; use NYT_Covid;'

# mysql --user root -p -e 'source /Users/chriskimmons/My_Projects/NYT_COV/SQL-files/covid_mysql_star.sql;'

mysql --user root -p -e localhost 'DROP DATABASE IF EXISTS NYT_Covid; 
                                            CREATE DATABASE IF NOT EXISTS NYT_Covid; 
                                            use NYT_Covid; 
                                            source /Users/chriskimmons/My_Projects/NYT_COV/SQL-files/covid_mysql_star.sql;'


# mysqlimport --host localhost --user root --port 3306 --local --fields-delimited-by ',' --lines-delimited-by '\n' --ignore-lines 1 -p


mysqlimport --host localhost --user root --ignore-lines 1 --port 3306 --local --fields-terminated-by ',' --lines-terminated-by '\n' -p NYT_Covid /Users/chriskimmons/My_Projects/NYT_COV/star_schema_files/*.csv
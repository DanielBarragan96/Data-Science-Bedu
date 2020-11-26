CREATE DATABASE IF NOT EXISTS cfe;

USE cfe;

CREATE TABLE gen_1 (
	DATE_TIME datetime,
    PLANT_ID bigint,
    SOURCE_KEY varchar(30),
    DC_POWER double,
    AC_POWER double,
    DAILY_YIELD double,
    TOTAL_YIELD double
);

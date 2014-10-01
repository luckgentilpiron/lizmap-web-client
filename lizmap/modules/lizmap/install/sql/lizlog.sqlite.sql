CREATE TABLE "log_detail" (
    "id" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL  UNIQUE ,
    "log_key" VARCHAR NOT NULL ,
    "log_timestamp" DATETIME DEFAULT CURRENT_TIMESTAMP,
    "log_user" VARCHAR,
    "log_content" TEXT,
    "log_repository" VARCHAR,
    "log_project" VARCHAR,
    "log_ip" VARCHAR);

CREATE TABLE "log_counter" (
    "id" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL ,
    "key" VARCHAR NOT NULL ,
    "counter" INTEGER);

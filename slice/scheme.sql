CREATE TABLE IF NOT EXISTS "server" (
  "id"     INT NOT NULL UNIQUE PRIMARY KEY,
  "name"   VARCHAR(24),
  "region" VARCHAR(3)
);

CREATE TABLE IF NOT EXISTS "chat" (
  "id"     INT PRIMARY KEY UNIQUE NOT NULL,
  "name"   VARCHAR(20),
  "avatar" BYTEA
);

CREATE TABLE IF NOT EXISTS "user" (
  "id"        INT PRIMARY KEY UNIQUE NOT NULL,
  "name"      VARCHAR(24),
  "surname"   VARCHAR(24),
  "status"    VARCHAR(50),
  "avatar"    BYTEA,
  "type"      VARCHAR(12) NOT NULL,
  "server_id" INT,

  FOREIGN KEY ("server_id") REFERENCES "server" ("id")
);

CREATE TABLE IF NOT EXISTS "user_chat" (
  "id"      INT PRIMARY KEY UNIQUE NOT NULL,
  "user_id" INT,
  "char_id" INT,

  FOREIGN KEY ("user_id") REFERENCES "user" ("id"),
  FOREIGN KEY ("char_id") REFERENCES "chat" ("id")
);

CREATE TABLE IF NOT EXISTS "message" (
  "id"           INT PRIMARY KEY UNIQUE NOT NULL,
  "send_time"    TIMESTAMP NOT NULL,
  "edit_time"    TIMESTAMP NOT NULL,
  "user_chat_id" INT,

  FOREIGN KEY ("user_chat_id") REFERENCES "user_chat" ("id")
);

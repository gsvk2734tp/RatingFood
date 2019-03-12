DROP TABLE IF EXISTS feed_types;
DROP TABLE IF EXISTS feed;
DROP TABLE IF EXISTS user_roles;
DROP TABLE IF EXISTS users;

DROP SEQUENCE IF EXISTS global_seq;

CREATE SEQUENCE global_seq START 100000;

CREATE TABLE users
(
  id         INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
  name       VARCHAR                           NOT NULL,
  email      VARCHAR                           NOT NULL,
  password   VARCHAR                           NOT NULL,
  registered TIMESTAMP           DEFAULT now() NOT NULL,
  enabled    BOOLEAN             DEFAULT TRUE  NOT NULL
);
CREATE UNIQUE INDEX users_unique_emails_idx ON users (email);

CREATE TABLE user_roles
(
  user_id INTEGER NOT NULL,
  role    VARCHAR,
  CONSTRAINT user_roles_idx UNIQUE (user_id, role),
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);

CREATE TABLE feed
(
  id          INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
  user_id     INTEGER NOT NULL,
  name        VARCHAR NOT NULL,
  description VARCHAR NOT NULL,
  price       INTEGER NOT NULL,
  ranking     INTEGER NOT NULL,
  photoURL    VARCHAR,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE UNIQUE INDEX feed_unique_idx ON feed (user_id, name);

CREATE TABLE feed_types
(
  feed_id INTEGER NOT NULL,
  type    VARCHAR,
  CONSTRAINT feed_roles_idx UNIQUE (feed_id, type),
  FOREIGN KEY (feed_id) REFERENCES feed (id) ON DELETE CASCADE
);
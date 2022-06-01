DROP DATABASE IF EXISTS api;
CREATE DATABASE api;
USE api;
CREATE TABLE users (
  id INT NOT NULL auto_increment,
  name VARCHAR(255) NOT NULL,
  url_github VARCHAR(255) NOT NULL,
  profile VARCHAR(255) NOT NULL,
  bio VARCHAR(255),
  PRIMARY KEY(id)
) ENGINE = INNODB;

CREATE TABLE apis (
  id INT NOT NULL auto_increment,
  name VARCHAR(255) NOT NULL,
  url_repo VARCHAR(255) NOT NULL,
  technologies VARCHAR(255) NOT NULL,
  category VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL
  rating INT NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
  PRIMARY KEY(id)
) ENGINE = INNODB;

CREATE TABLE front (
  id INT NOT NULL auto_increment,
  name VARCHAR(255) NOT NULL,
  url_repo VARCHAR(255) NOT NULL,
  technologies VARCHAR(255) NOT NULL,
  category VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  rating INT NOT NULL,
  api_id INT NOT NULL,
  api_category VARCHAR(255) NOT NULL,
  url_deploy VARCHAR(255),
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
  FOREIGN KEY (api_id) REFERENCES apis (id) ON DELETE CASCADE,
  FOREIGN KEY (api_category) REFERENCES apis (category) ON DELETE CASCADE,
  PRIMARY KEY(id)
) ENGINE = INNODB;
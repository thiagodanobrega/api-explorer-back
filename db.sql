DROP DATABASE
  IF EXISTS api;

CREATE DATABASE
  api;

USE
  api;

CREATE TABLE
  users (
    id VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    url_github VARCHAR(255) NOT NULL,
    profile VARCHAR(255) NOT NULL,
    bio VARCHAR(255),
    PRIMARY KEY(id)
  ) ENGINE = INNODB;

CREATE TABLE
  apis (
    id VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    url_repo VARCHAR(255) NOT NULL,
    technologies VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    rating INT NOT NULL,
    user_id VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
    PRIMARY KEY(id)
  ) ENGINE = INNODB;

CREATE TABLE
  front (
    id VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    url_repo VARCHAR(255) NOT NULL,
    technologies VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL, 
    description VARCHAR(255),
    rating INT NOT NULL,
    url_deploy VARCHAR(255),
    api_id VARCHAR(255) NOT NULL,
    user_id VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
    FOREIGN KEY (api_id) REFERENCES apis (id) ON DELETE CASCADE,
    PRIMARY KEY(id)
  ) ENGINE = INNODB;

INSERT INTO
  users(id, name, url_github, profile, bio)
VALUES
  (
    'afbf3b6b-26e6-4167-801f-ba538aa35c6b',
    'NOME',
    'URL',
    'FOTO',
    'KKDKDKKDKDDK'
  );

INSERT INTO
  apis(
    id,
    name,
    url_repo,
    technologies,
    category,
    description,
    rating,
    user_id
  )
VALUES
  (
    '76c569dc-18c1-4d6b-bfd7-cf12d9d3bbc9',
    'uma api',
    'URL',
    '["TypeScript","JavaScript"]',
    'anime',
    'description',
    0,
    'afbf3b6b-26e6-4167-801f-ba538aa35c6b'
  ),
  (
    'dc803177-1b46-4fa8-9037-cf33cfd70709',
    'outra api',
    'URL',
    '["TypeScript","JavaScript"]',
    'anime',
    'description',
    0,
    'afbf3b6b-26e6-4167-801f-ba538aa35c6b'
  )
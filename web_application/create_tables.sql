DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS robots;
DROP TABLE IF EXISTS maps;
DROP TABLE IF EXISTS stations;
DROP TABLE IF EXISTS tasks;

CREATE TABLE users (
	id INTEGER PRIMARY KEY NOT NULL,
	username TEXT NOT NULL,
    name TEXT,
    hash TEXT NOT NULL
);

CREATE TABLE robots (
    id INTEGER PRIMARY KEY NOT NULL,
    user_id INTEGER,
    robot_name TEXT,
    robot_type TEXT,
    ip_address TEXT,

    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE maps (
    id INTEGER PRIMARY KEY NOT NULL,
    mapfile_name TEXT,
    location TEXT,
    mapfile_location TEXT
);

CREATE TABLE stations (
    id INTEGER PRIMARY KEY NOT NULL,

    map INTEGER,
    location TEXT,
    station_type TEXT,
    postion TEXT,
    robot_at_station INTEGER,
    station_status INTEGER,

    FOREIGN KEY (map) REFERENCES maps(id),
    FOREIGN KEY (location) REFERENCES maps(location),
    FOREIGN KEY (robot_at_station) REFERENCES robots(id)
);

CREATE TABLE tasks (
    id INTEGER PRIMARY KEY NOT NULL,
    user_id INTEGER,
    robot_id INTEGER,
    map INTEGER,
    start_station INTEGER,
    goal_station INTEGER,
    priority INTEGER,
    task_type TEXT
    datetime DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (robot_id) REFERENCES robots(id),
    FOREIGN KEY (map) REFERENCES maps(id),
    FOREIGN KEY (start_station) REFERENCES stations(id),
    FOREIGN KEY (goal_station) REFERENCES stations(id)
);

INSERT INTO users (username, name, hash) VALUES ('admin', 'Administrator', "pbkdf2:sha256:150000$N5Smgi8z$5eb6d8ad726f4a60435cfb9354f0f5495581477617b6d9b071b45492fe17266a");

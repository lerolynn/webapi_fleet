# CS50 Final Project - Robot Manager
Robot Manager is a web application using Flask, Python and SQL that allows users to manage a fleet of robots. 

## Installation
Make sure that Python 3 is installed and is used to run this program. Flask is the main framework used for this project, and sqlite3 is used for the database.

```
pip3 install Flask
pip3 install db-sqlite3
```
Downloading DB Browser for SQLite is recommended to configure database.

The following packages should also be preinstalled via pip3
* JSON
* PIL
* OS
* werkzeug


## Usage

Set the FLASK_APP environment variable (Optional)
```
$ export FLASK_APP=app.py
```

Run flask
```
$ flask run
```

## Features
Robot Manager allows the user to:
* Create New Account
* Login/Logout
* Change Password 
* Reset Password using Admin Account (Forgot Password)

* Upload Tasklist / Delete Tasklist
* Add New Robot /  Update Robot Details / Delete Robot
* Upload New Map / Delete Map

* Set Display Map
* Run Tasklist

## Input Format
### Tasklists
The Robot Manager accepts tasklists in the JSON format as a file input in the following format. The user can upload new tasklists through the Upload Tasklist option on the Tasks page. 
```
{
    "tasks_name": "test_task",

    "map_name": "test",
    "map_file": "test.pgm",
    "yaml_file": "test.yaml",

    "tasks": [
        {"id": "0", "waypoint": [0, 0, 0]},
        {"id": "1", "waypoint": [1, 1, 1]},
        {"id": "2", "waypoint": [2, 2, 2]},
        {"id": "3", "waypoint": [3, 3, 3]}
    ]
}
```

### Maps
The Robot Manager accepts maps in the form of a map image and a yaml file. (Maps can be generated via ROS mapping software.) Map images in the `.JPG` or `.PGM` format are accepted, and only map parameter files in the `.YAML` format is accepted. The user can upload new maps through the `Add New Map` option on the maps page.

### Robots
The user can add new robots through the `Add New Robot` option on the robots page. The robot name and IP Address has to be distinct.
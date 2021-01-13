import requests
import rospy

BASE = "http://127.0.0.1:5000/"

response = requests.get(BASE + "get_tasks")
print(response.json())
from sys import argv
from bottle import *
import json
import urllib.request


@route("/")
def index():
    return """
    <h2>Verkefni 4</h2>
    <p><a href="/a">Json Local</a></p>
    <p><a href="/b">Json APIs.is</a></p>
    """

# Json Local -----------------------

@route("/a")
def index():
    return template("index.tpl")

# Json APIs.is -----------------------

with urllib.request.urlopen("http://apis.is/currency/") as url:
    data = json.loads(url.read().decode())

@route("/b")
def index2():
    return template("index2.tpl", data=data)

##############################################################################################

@route("/static/<skra>")
def static(skra):
    return static_file(skra, root="./static")

run(host="0.0.0.0", port=argv[1], debug=True, reloader=True)

# villuboð ----------------------

@error(404)
def villa(error):
    return "<h2 'style=color:blue'>Error 404: See, I pulled a lil sneaky on ya</h2>"

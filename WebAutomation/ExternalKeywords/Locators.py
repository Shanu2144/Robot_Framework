import json
import jsonpath

def read_locator_from_json(locatorname,Filepath):
    f = open(Filepath)
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response, locatorname)
    return value[0]


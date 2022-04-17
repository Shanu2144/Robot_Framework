import json
import jsonpath

def read_locator_from_json(locatorname):
    f=open('C:/Users/Global/PycharmProjects/pythonProject2/Json Files/Elements.json')
    response=json.loads(f.read())
    value=jsonpath.jsonpath(response,locatorname)
    return value[0]

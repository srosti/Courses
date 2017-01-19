import urllib.request
import urllib.parse
import json
import codecs

#url = 'https://raw.githubusercontent.com/srosti/Python/master/samples/actual.json'
url = 'http://python-data.dr-chuck.net/geojson?'
#address = 'South Federal University'
address = 'Universidade Federal do Rio Grande do Sul'
url = url + urllib.parse.urlencode({'sensor':'false','address':address})

print("Retrieving url: ", url)
response = urllib.request.urlopen(url).read().decode("utf-8")

try: info = json.loads(response)
except: info = None

if 'status' not in info or info['status'] != 'OK':
    print("==== Failure To Retrieve ====")
    print(response)

#print(json.dumps(info, indent=2))
print("Place id: ", info["results"][0]["place_id"])


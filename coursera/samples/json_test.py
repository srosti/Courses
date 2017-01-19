import urllib.request
import json
import codecs

url = 'https://raw.githubusercontent.com/srosti/Python/master/samples/actual.json'
total = 0
count = 0

response = urllib.request.urlopen(url).read().decode("utf-8")

info = json.loads(response)

for items in info["comments"]:
    count += 1
    total += items["count"]

print("Count:", count)
print("Sum:", total)

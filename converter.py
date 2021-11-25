import json

f = open('sample.catalog.json',)
singer_catalog = json.load(f)

f1 = open('catalog.json')
airbyte_catalog = json.load(f1)

for i in singer_catalog['streams']:
	for j in airbyte_catalog['streams']:
		if (i['tap_stream_id'] == j['stream']['name'] ):
			j['stream']['jsonSchema'] = i['schema']
			break

new_file = open("new.catalog.json", "a")
new_file.write(json.dumps(airbyte_catalog, indent = 4))
new_file.close()
f.close()
f1.close()

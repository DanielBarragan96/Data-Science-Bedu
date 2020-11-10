# Requires the PyMongo package.
# https://api.mongodb.com/python/current

client = MongoClient('mongodb+srv://beduUser:12345@beducluster.0duqi.mongodb.net/test?authSource=admin&replicaSet=atlas-k7nqky-shard-0&connectTimeoutMS=600000&socketTimeoutMS=6000000&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={}
project={
    'date': 1, 
    'name': 1, 
    'text': 1, 
    '_id': 0
}

result = client['sample_mflix']['comments'].find(
  filter=filter,
  projection=project
)
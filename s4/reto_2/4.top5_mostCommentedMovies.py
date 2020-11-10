# Requires the PyMongo package.
# https://api.mongodb.com/python/current

client = MongoClient('mongodb+srv://beduUser:12345@beducluster.0duqi.mongodb.net/test?authSource=admin&replicaSet=atlas-k7nqky-shard-0&connectTimeoutMS=600000&socketTimeoutMS=6000000&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={}
project={
    'title': 1
}
sort=list({
    'num_mflix_comments': -1
}.items())
limit=5

result = client['sample_mflix']['movies'].find(
  filter=filter,
  projection=project,
  sort=sort,
  limit=limit
)
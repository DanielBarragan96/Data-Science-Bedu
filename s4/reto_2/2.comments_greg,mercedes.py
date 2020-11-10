# Requires the PyMongo package.
# https://api.mongodb.com/python/current

client = MongoClient('mongodb+srv://beduUser:12345@beducluster.0duqi.mongodb.net/test?authSource=admin&replicaSet=atlas-k7nqky-shard-0&connectTimeoutMS=600000&socketTimeoutMS=6000000&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={
    '$or': [
        {
            'name': 'Greg Powell'
        }, {
            'name': 'Mercedes Tyler'
        }
    ]
}

result = client['sample_mflix']['comments'].find(
  filter=filter
)
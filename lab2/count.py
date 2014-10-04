import avro.schema
from avro.datafile import DataFileReader, DataFileWriter
from avro.io import DatumReader, DatumWriter

import pandas as pd

reader = DataFileReader(open("countries.avro", "r"), DatumReader())

#for record in reader:
#    print record['country_id'], record['population']

df = pd.DataFrame(list(reader))
print df[df.population > 100000000]['country_id'].count()


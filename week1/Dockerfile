FROM python:3.9.1

WORKDIR /Pg-Ddata

RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2 pyarrow

COPY ingest_data.py ingest_data.py 

ENTRYPOINT [ "python", "ingest_data.py" ]

# # You need to change line 13,23. If you also want another database you need yo change 22, too.
## Please remember to change the net-work by using "docker network ls" to check the network name. Typically project_name_defauly. 
# url="https://d37ci6vzurychx.cloudfront.net/trip-data/green_tripdata_2019-10.parquet"


# docker run -it \
#   --network=week1_default \
#   taxi_ingest:v001 \
#     --user=root \
#     --password=root \
#     --host=pg-database \
#     --port=5432 \
#     --db=ny_taxi \
#     --tb=green_taxi_trips_Feb \
#     --url=${url}

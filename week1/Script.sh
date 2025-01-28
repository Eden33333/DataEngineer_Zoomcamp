
# PGSQL
docker run -it \
  -e POSTGRES_USER="root" \
  -e POSTGRES_PASSWORD="root" \
  -e POSTGRES_DB="ny_taxi" \
  -v "c:/Project_/Data Engine/DataEngineer_Zoomcamp/data/ny_taxi_postgres_data:/var/lib/postgresql/data" \
  -p 5432:5432 \
  --network=pg-network \
  --name pg-database \
  postgres:13

# PG Admin  
docker run -it \
  -e PGADMIN_DEFAULT_EMAIL="admin@admin.com" \
  -e PGADMIN_DEFAULT_PASSWORD="root" \
  -p 8080:80 \
  --network=pg-network \
  --name pg-admin \
  dpage/pgadmin4

  URL="https://d37ci6vzurychx.cloudfront.net/trip-data/green_tripdata_2024-01.parquet"
  # Ingest data using docker

# Python configuration
# docker run -it \
#   --network=pg-network \
#   taxi_ingest:v001 \
#     --user=root \
#     --password=root \
#     --host=pg-database \
#     --port=5432 \
#     --db=ny_taxi \
#     --tb=green_taxi_trips_Feb \
#     --url=${url}
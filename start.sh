sudo docker-compose up -d;

# Delay until logs will not be printed
sleep 2;

# NEXT script is used to inspect docker logs

# Printing token
container_id="${$(sudo docker ps | egrep 'jupyter_notebook_server'):0:12}";
logs="$(sudo docker logs "$container_id")"
echo $logs;
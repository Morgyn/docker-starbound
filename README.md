docker run --name starbound -v /starbound:/root/starbound morgyn/starbound

docker exec -t -i starbound /update.sh <steam login id>

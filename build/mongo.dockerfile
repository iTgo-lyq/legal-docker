FROM mongo:4.4

COPY /data /root/data

CMD mongod --fork --logpath /var/log/mongodb.log; \
    mongorestore -d legal-oa /root/data; \
    mongod --shutdown; \
    docker-entrypoint.sh mongod
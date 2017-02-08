# Parent Dockerfile https://github.com/docker-library/mongo/blob/982328582c74dd2f0a9c8c77b84006f291f974c3/3.0/Dockerfile
# Inspired by: http://stackoverflow.com/questions/33558506/how-to-create-a-mongo-docker-image-with-default-collections-and-data?answertab=votes#tab-top
FROM mongo:3.4

# Modify child mongo to use /data/db2 as dbpath (because /data/db wont persist the build)
RUN mkdir -p /data/db2 \
    && echo "dbpath = /data/db2" > /etc/mongodb.conf \
    && chown -R mongodb:mongodb /data/db2

COPY data/ /pharmacy-data/

RUN mongod --fork --logpath /var/log/mongodb.log --dbpath /data/db2 --smallfiles \

    && mongoimport --jsonArray -d services -c pharmacies --file /pharmacy-data/pharmacy-data.json \
    && mongo services --eval "db.pharmacies.createIndex({location:'2dsphere'})" \
    && mongod --dbpath /data/db2 --shutdown \
    && chown -R mongodb /data/db2


# Make the new dir a VOLUME to persists it 
VOLUME /data/db2

CMD ["mongod", "--config", "/etc/mongodb.conf", "--smallfiles"]

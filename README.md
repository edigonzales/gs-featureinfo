# gs-featureinfo

```
multipass mount /Users/stefan/sources/gs-featureinfo foo:/home/ubuntu/gs-featureinfo

```

```
mkdir -m 0777 ~/pgdata-pub
mkdir --mode=0777 ~/pgdata-pub
docker run --rm --name pubdb -p 54322:5432 -v ~/pgdata-pub:/var/lib/postgresql/data:delegated -e POSTGRES_PASSWORD=mysecretpassword -e POSTGRES_DB=pub -e PG_READ_PWD=dmluser -e PG_WRITE_PWD=gretl sogis/oereb-db:2
```
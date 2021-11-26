# gs-featureinfo

```
multipass mount /Users/stefan/sources/gs-featureinfo foo:/home/ubuntu/gs-featureinfo
```

```
mkdir -m 0777 ~/pgdata-pub
mkdir --mode=0777 ~/pgdata-pub
docker run --rm --name pubdb -p 54322:5432 -v ~/pgdata-pub:/var/lib/postgresql/data:delegated -e POSTGRES_PASSWORD=mysecretpassword -e POSTGRES_DB=pub -e PG_READ_PWD=dmluser -e PG_WRITE_PWD=gretl sogis/oereb-db:2
```

```
java -jar ili2pg-4.6.1/ili2pg-4.6.1.jar --dbhost localhost --dbport 54322 --dbdatabase pub --dbusr ddluser --dbpwd ddluser --defaultSrsCode 2056 --nameByTopic --createGeomIdx --createFk --createFkIdx  --createEnumTabs --beautifyEnumDispName --createMetaInfo --createNumChecks --strokeArcs  --disableValidation --dbschema arp_npl_pub --models SO_Nutzungsplanung_Publikation_20190909 --doSchemaImport --import ch.so.arp.nutzungsplanung_xtf/ch.so.arp.nutzungsplanung.xtf
```
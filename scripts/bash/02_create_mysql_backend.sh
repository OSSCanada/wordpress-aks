#! /bin/bash

az mysql server create -r $RGNAME -u $DBADMINNAME -p $DBADMINPASSWORD --storage-size 51200 --name $DBSERVERNAME
#! /bin/bash

az mysql server create -r $RGNAME --storage-size 51200 -u $DBADMINNAME -p $DBADMINPASSWORD --name $DBSERVERNAME
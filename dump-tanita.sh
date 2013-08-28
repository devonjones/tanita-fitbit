#!/bin/bash
source dump-tanita.conf
pushd $HEALTHY_EDGE_DIR
cp "Healthy Edge Db.sdf" HealthyEdgeDb.3.5.sdf
./SqlCeCmd.exe -d "Data Source=HealthyEdgeDb.3.5.sdf" -e upgrade
./SqlCeCmd.exe -d "Data Source=HealthyEdgeDb.3.5.sdf" -q "select * from information_schema.tables" > tables.txt
./SqlCeCmd.exe -d "Data Source=HealthyEdgeDb.3.5.sdf" -q "select * from information_schema.columns" > columns.txt
./SqlCeCmd.exe -d "Data Source=HealthyEdgeDb.3.5.sdf" -q "select * from Classes" > classes.txt
./SqlCeCmd.exe -d "Data Source=HealthyEdgeDb.3.5.sdf" -q "select * from DBInfo" > dbinfo.txt
./SqlCeCmd.exe -d "Data Source=HealthyEdgeDb.3.5.sdf" -q "select * from Measurements" > measurements.txt
./SqlCeCmd.exe -d "Data Source=HealthyEdgeDb.3.5.sdf" -q "select * from Users" > users.txt
cp * $DROPBOX_DIR
popd

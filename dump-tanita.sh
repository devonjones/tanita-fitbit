#!/bin/bash
source dump-tanita.conf
pushd $HEALTHY_EDGE_DIR
cp "Healthy Edge Db.sdf" HealthyEdgeDb.3.5.sdf
$SQLCECMD -d "Data Source=HealthyEdgeDb.3.5.sdf" -e upgrade
$SQLCECMD -d "Data Source=HealthyEdgeDb.3.5.sdf" -q "select * from information_schema.tables" > tables.txt
$SQLCECMD -d "Data Source=HealthyEdgeDb.3.5.sdf" -q "select * from information_schema.columns" > columns.txt
$SQLCECMD -d "Data Source=HealthyEdgeDb.3.5.sdf" -q "select * from Classes" > classes.txt
$SQLCECMD -d "Data Source=HealthyEdgeDb.3.5.sdf" -q "select * from DBInfo" > dbinfo.txt
$SQLCECMD -d "Data Source=HealthyEdgeDb.3.5.sdf" -q "select * from Measurements" > measurements.txt
$SQLCECMD -d "Data Source=HealthyEdgeDb.3.5.sdf" -q "select * from Users" > users.txt
cp * $DROPBOX_DIR
popd

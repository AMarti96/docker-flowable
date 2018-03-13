#!/bin/bash
cd ../Dockerfile/lib/
cd flowable-admin/
jar cvf flowable-admin.war ./
mv flowable-admin.war ../ 
cd ../
cd flowable-idm/
jar cvf flowable-idm.war ./
mv flowable-idm.war ../ 
cd ../
cd flowable-modeler/
jar cvf flowable-modeler.war ./
mv flowable-modeler.war ../ 
cd ../
cd flowable-rest/
jar cvf flowable-rest.war ./
mv flowable-rest.war ../ 
cd ../
cd flowable-task/
jar cvf flowable-task.war ./
mv flowable-task.war ../
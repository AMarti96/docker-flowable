#!/bin/bash
cd ../Dockerfile/lib/
mkdir flowable-admin/
cd flowable-admin/
jar xvf ../flowable-admin.war
cd ..
mkdir flowable-idm/
cd flowable-idm/
jar xvf ../flowable-idm.war
cd ..
mkdir flowable-modeler/
cd flowable-modeler/
jar xvf ../flowable-modeler.war
cd ..
mkdir flowable-rest/
cd flowable-rest/
jar xvf ../flowable-rest.war
cd ..
mkdir flowable-task/
cd flowable-task/
jar xvf ../flowable-task.war
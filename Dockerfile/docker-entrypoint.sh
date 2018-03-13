#!/bin/bash
set -eo pipefail
shopt -s nullglob
touch ./lib/flowable-ui-app.properties
if [[ ! -z $datasource_driver ]]; then
cat <<EOF >>./lib/flowable-ui-app.properties
datasource.driver=$datasource_driver
EOF
fi

if [[ ! -z $datasource_url ]]; then
cat <<EOF >>./lib/flowable-ui-app.properties
datasource.url=$datasource_url
EOF
fi

if [[ ! -z $datasource_username ]]; then
cat <<EOF >>./lib/flowable-ui-app.properties
datasource.username=$datasource_username
EOF
fi

if [[ ! -z $datasource_password ]]; then
cat <<EOF >>./lib/flowable-ui-app.properties
datasource.password=$datasource_password
EOF
fi

if [[ ! -z $datasource.min-pool-size ]]; then
echo 'datasource.min-pool-size=$datasource.min-pool-size' >> ./lib/flowable-ui-app.properties
fi

if [[ ! -z $datasource.max-pool-size ]]; then
echo 'datasource.max-pool-size=$datasource.max-pool-size' >> ./lib/flowable-ui-app.properties
fi

if [[ ! -z $datasource.acquire-increment ]]; then
echo 'datasource.acquire-increment=$datasource.acquire-increment' >> ./lib/flowable-ui-app.properties
fi

if [[ ! -z $create_demo_users ]]; then
cat <<EOF >>./lib/flowable-ui-app.properties
create.demo.users=$create_demo_users
EOF
fi

if [[ ! -z $create_demo_definitions ]]; then
cat <<EOF >>./lib/flowable-ui-app.properties
create.demo.definitions=$create_demo_definitions
EOF
fi

if [[ ! -z $create_demo_models ]]; then
cat <<EOF >>./lib/flowable-ui-app.properties
create.demo.models=$create_demo_models
EOF
fi

if [[ ! -z $idm_app_url ]]; then
cat <<EOF >>./lib/flowable-ui-app.properties
idm.app.url=$idm_app_url
EOF
fi

if [[ ! -z $deployment_api_url ]]; then
cat <<EOF >>./lib/flowable-ui-app.properties
deployment.api.url=$deployment_api_url
EOF
fi

if [[ ! -z $admin_user ]]; then
cat <<EOF >>./lib/flowable-ui-app.properties
rest.process.app.user=$admin_user
rest.dmn.app.user=$admin_user
rest.form.app.user=$admin_user
rest.content.app.user=$admin_user
idm.admin.user=$admin_user
admin.userid=$admin_user
EOF
fi

if [[ ! -z $admin_password ]]; then
cat <<EOF >>./lib/flowable-ui-app.properties
rest.process.app.password=$admin_password
rest.dmn.app.password=$admin_password
rest.form.app.password=$admin_password
rest.content.app.password=$admin_password
idm.admin.password=$admin_password
admin.password=$admin_password
EOF
fi

exec ./bin/catalina.sh run

source /usr/local/etc/ocp4.config
oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
oc new-project zzy0064-hw3-deploy
oc create -f quote-php-template.json
oc process hw3-quote-php-persistent -p RHT_OCP4_QUAY_USER=zzy0064 | oc create -f -
sleep 7
oc expose svc quote-php

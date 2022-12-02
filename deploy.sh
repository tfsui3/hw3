oc new-project zzy0064-hw3-deploy
oc create -f quote-php-template.json
oc process hw3-quote-php-persistent -p RHT_OCP4_QUAY_USER=zzy0064 | oc create -f -
sleep 7
oc expose svc quote-php

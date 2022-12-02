oc create -f quote-php-template.json
oc process hw3-quote-php-persistent \
> -p RHT_OCP4_QUAY_USER=zzy0064 \
>  | oc create -f -
sleep(5)
oc expose svc quote-php

source /usr/local/etc/ocp4.config
if [ -z ${RHT_OCP4_DEV_USER}]
then	
	echo "Please login in OpenShift manually before starting"
  	echo "If already logged in OpenShift, just bash 'deploy.sh'"
else
  	oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
  	bash deploy.sh
fi

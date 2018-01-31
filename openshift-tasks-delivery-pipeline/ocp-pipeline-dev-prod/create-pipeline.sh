oc project openshift-tasks-dev
oc create -f tasks-pipeline.yml
oc policy add-role-to-user edit system:serviceaccount:openshift-tasks-dev:jenkins -n openshift-tasks-prod
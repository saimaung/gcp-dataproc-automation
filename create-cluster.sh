gcloud dataproc clusters create cluster-custom \
--bucket $BUCKET \
--subnet default \
--zone $MYZONE \
--region $MYREGION \
--master-machine-type n1-standard-2 \
--master-boot-disk-size 100 \
--num-workers 2 \
--worker-machine-type n1-standard-1 \
--worker-boot-disk-size 50 \
--num-preemptible-workers 2 \
--image-version 1.2 \
--scopes 'https://www.googleapis.com/auth/cloud-platform' \
--tags customaccess \
--project $PROJECT_ID \
--initialization-actions 'gs://'$BUCKET'/init-script.sh','gs://cloud-training-demos/dataproc/datalab.sh'
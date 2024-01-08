#! /bin/bash

export AWS_ACCESS_KEY_ID='projet_mlops'
export AWS_SECRET_ACCESS_KEY='projet_mlops'
export MLFLOW_TRACKING_URI='http://your_adress_ip:5000/'
export MLFLOW_S3_ENDPOINT_URL='http://your_adress_ip:9000/'
export MLFLOW_EXPERIMENT_NAME="mlops3"
export AWS_DEFAULT_REGION="us-east-1"


mlflow run https://github.com/Mohamedabdelli/projet-mlflow.git -P remote_server_uri=$MLFLOW_TRACKING_URI -P experiment_name=$MLFLOW_EXPERIMENT_NAME -P data_url=https://minio.lab.sspcloud.fr/mabdelli/mlflow/exercice1.csv -P run_name='test' -P max_features=100 -P max_depth=15





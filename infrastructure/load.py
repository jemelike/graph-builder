import requests
import boto3

s3 = boto3.client('s3')


s3

# neptune_loader_url = ''
# AWS_ROLE_ARN = ''
# AWS_REGION = "us-east-1"
# FORMAT ="csv"
# EDGE_DATA = {}
# VERTEX_DATA = {
#       "source" : "s3://bearly-graph/vertex_0.csv",
#       "format" : FORMAT,
#       "iamRoleArn" : AWS_ROLE_ARN,
#       "region" : AWS_REGION,
#       "failOnError" : "FALSE",
#       "parallelism" : "MEDIUM",
#       "updateSingleCardinalityProperties" : "FALSE",
#       "queueRequest" : "TRUE"
      
#     }
# requests.post(f'https:://{neptune_loader_url}:8182',data,)
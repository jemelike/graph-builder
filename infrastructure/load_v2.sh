curl -X POST \
    -H 'Content-Type: application/json' \
    https://neptunedbcluster-8cekf01cghz0.cluster-cqlijw7gc9bd.us-east-1.neptune.amazonaws.com:8182/loader -d '
    {
      "source" : "s3://bearly-graph/vertex/version=2/all_vertex_0.csv",
      "format" : "csv",
      "iamRoleArn" : "arn:aws:iam::675477933566:role/GMU-AIT-664-NeptuneStack-5ZX-NeptuneLoadFromS3Role-7KTIWEF0J5RB",
      "region" : "us-east-1",
      "failOnError" : "FALSE",
      "parallelism" : "MEDIUM",
      "updateSingleCardinalityProperties" : "FALSE",
      "queueRequest" : "TRUE"
      
    }'

curl -X POST \
    -H 'Content-Type: application/json' \
    https://neptunedbcluster-8cekf01cghz0.cluster-cqlijw7gc9bd.us-east-1.neptune.amazonaws.com:8182/loader -d '
    {
      "source" : "s3://bearly-graph/edge/version=2/edges_0.csv",
      "format" : "csv",
      "iamRoleArn" : "arn:aws:iam::675477933566:role/GMU-AIT-664-NeptuneStack-5ZX-NeptuneLoadFromS3Role-7KTIWEF0J5RB",
      "region" : "us-east-1",
      "failOnError" : "FALSE",
      "parallelism" : "MEDIUM",
      "updateSingleCardinalityProperties" : "FALSE",
      "queueRequest" : "TRUE"
      
    }'
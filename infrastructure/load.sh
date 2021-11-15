# Need to convert to Python script
curl -X POST \
    -H 'Content-Type: application/json' \
    https://neptunedbcluster-ojo9zmfsbp7d.cluster-cqlijw7gc9bd.us-east-1.neptune.amazonaws.com:8182/loader -d '
    {
      "source" : "s3://bearly-graph/vertex/version=2/album_vertex_0.csv",
      "format" : "csv",
      "iamRoleArn" : "arn:aws:iam::675477933566:role/NeptuneQuickStart-NeptuneSta-NeptuneLoadFromS3Role-K5SIPOCEUIQT",
      "region" : "us-east-1",
      "failOnError" : "FALSE",
      "parallelism" : "MEDIUM",
      "updateSingleCardinalityProperties" : "FALSE",
      "queueRequest" : "TRUE"
      
    }'

curl -X POST \
    -H 'Content-Type: application/json' \
    https://neptunedbcluster-ojo9zmfsbp7d.cluster-cqlijw7gc9bd.us-east-1.neptune.amazonaws.com:8182/loader -d '
    {
      "source" : "s3://bearly-graph/vertex/version=2/track_vertex_0.csv",
      "format" : "csv",
      "iamRoleArn" : "arn:aws:iam::675477933566:role/NeptuneQuickStart-NeptuneSta-NeptuneLoadFromS3Role-K5SIPOCEUIQT",
      "region" : "us-east-1",
      "failOnError" : "FALSE",
      "parallelism" : "MEDIUM",
      "updateSingleCardinalityProperties" : "FALSE",
      "queueRequest" : "TRUE"
      
    }'

curl -X POST \
    -H 'Content-Type: application/json' \
    https://neptunedbcluster-ojo9zmfsbp7d.cluster-cqlijw7gc9bd.us-east-1.neptune.amazonaws.com:8182/loader -d '
    {
      "source" : "s3://bearly-graph/vertex/version=2/artist_vertex_0.csv",
      "format" : "csv",
      "iamRoleArn" : "arn:aws:iam::675477933566:role/NeptuneQuickStart-NeptuneSta-NeptuneLoadFromS3Role-K5SIPOCEUIQT",
      "region" : "us-east-1",
      "failOnError" : "FALSE",
      "parallelism" : "MEDIUM",
      "updateSingleCardinalityProperties" : "FALSE",
      "queueRequest" : "TRUE"
      
    }'

curl -X POST \
    -H 'Content-Type: application/json' \
    https://neptunedbcluster-ojo9zmfsbp7d.cluster-cqlijw7gc9bd.us-east-1.neptune.amazonaws.com:8182/loader -d '
    {
      "source" : "s3://bearly-graph/vertex/version=2/playlist_vertex_0.csv",
      "format" : "csv",
      "iamRoleArn" : "arn:aws:iam::675477933566:role/NeptuneQuickStart-NeptuneSta-NeptuneLoadFromS3Role-K5SIPOCEUIQT",
      "region" : "us-east-1",
      "failOnError" : "FALSE",
      "parallelism" : "MEDIUM",
      "updateSingleCardinalityProperties" : "FALSE",
      "queueRequest" : "TRUE"
      
    }'

curl -X POST \
    -H 'Content-Type: application/json' \
    https://neptunedbcluster-ojo9zmfsbp7d.cluster-cqlijw7gc9bd.us-east-1.neptune.amazonaws.com:8182/loader -d '
    {
      "source" : "s3://bearly-graph/edge/version=2/edges_0.csv",
      "format" : "csv",
      "iamRoleArn" : "arn:aws:iam::675477933566:role/NeptuneQuickStart-NeptuneSta-NeptuneLoadFromS3Role-K5SIPOCEUIQT",
      "region" : "us-east-1",
      "failOnError" : "FALSE",
      "parallelism" : "MEDIUM",
      "updateSingleCardinalityProperties" : "FALSE",
      "queueRequest" : "TRUE"
      
    }'
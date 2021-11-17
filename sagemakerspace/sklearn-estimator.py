from sagemaker.sklearn.estimator import SKLearn

sklearn_estimator = SKLearn('sklearn-train.py',
                            instance_type='ml.m4.xlarge',
                            framework_version='0.20.0',
                            hyperparameters = {'epochs': 20, 'batch-size': 64, 'learning-rate': 0.1})

sklearn_estimator.fit({'train': 's3://my-data-bucket/path/to/my/training/data',
                        'test': 's3://my-data-bucket/path/to/my/test/data'})

# Train my estimator
sklearn_estimator = SKLearn(entry_point='train_and_deploy.py',
                            instance_type='ml.m4.xlarge',
                            framework_version='0.20.0')
sklearn_estimator.fit('s3://my_bucket/my_training_data/')

# Deploy my estimator to a SageMaker Endpoint and get a Predictor
predictor = sklearn_estimator.deploy(instance_type='ml.m4.xlarge',
                                     initial_instance_count=1)

# `data` is a NumPy array or a Python list.
# `response` is a NumPy array.
response = predictor.predict(data)
import argparse
import os
from sklearn import neighbors, datasets
import numpy as np

if __name__ =='__main__':

    # parser = argparse.ArgumentParser()

    # # hyperparameters sent by the client are passed as command-line arguments to the script.
    # parser.add_argument('--epochs', type=int, default=50)
    # parser.add_argument('--batch-size', type=int, default=64)
    # parser.add_argument('--learning-rate', type=float, default=0.05)

    # # Data, model, and output directories
    # parser.add_argument('--output-data-dir', type=str, default=os.environ.get('SM_OUTPUT_DATA_DIR'))
    # parser.add_argument('--model-dir', type=str, default=os.environ.get('SM_MODEL_DIR'))
    # parser.add_argument('--train', type=str, default=os.environ.get('SM_CHANNEL_TRAIN'))
    # parser.add_argument('--test', type=str, default=os.environ.get('SM_CHANNEL_TEST'))

    # args, _ = parser.parse_known_args()
    n_neighbors = 15

    # import some data to play with
    iris = datasets.load_iris()

    # we only take the first two features. We could avoid this ugly
    # slicing by using a two-dim dataset
    X = iris.data[:, :2]
    y = iris.target
    clf = neighbors.KNeighborsClassifier(n_neighbors)


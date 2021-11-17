from sklearn.externals import joblib
import argparse
import os

if __name__=='__main__':
    # default to the value in environment variable `SM_MODEL_DIR`. Using args makes the script more portable.
    parser.add_argument('--model-dir', type=str, default=os.environ['SM_MODEL_DIR'])
    args, _ = parser.parse_known_args()

    # ... train classifier `clf`, then save it to `model_dir` as file 'model.joblib'
    joblib.dump(clf, os.path.join(args.model_dir, "model.joblib"))
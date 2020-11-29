[![CircleCI](https://circleci.com/gh/clequinio5/ml-microservice-k8s-aws.svg?style=shield)](https://app.circleci.com/pipelines/github/clequinio5/ml-microservice-k8s-aws)

# Machine Learning API deployment at scale using Docker and Kubernetes

## Stack

- Python
- AWS (Cloud9, EC2)
- Docker
- Kubernetes
- CircleCI

## Overview

This project aims to deploy an Machine Learning API at scale using Docker and K8s.

We are using a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. Data comes from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project operationalizes a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project can be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

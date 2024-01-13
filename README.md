# Implement Linear Regression using Pytorch and Tensorflow

## Summary

This repository is dedicated to implementing Linear Regression using PyTorch and TensorFlow. The implementation uses both the normal equations and gradient descent. The goal was to setup a local environment, familiarise myself with the two frameworks and appreciate their differences and similarities in implementing a simple linear mode.

- TensorFlow implementation: `tf-torch-linreg/tf_linreg.ipynb`
- PyTorch implementation: `tf-torch-linreg/torch_linreg.ipynb`

## Project Setup

This project uses Pyenv for Python version management and Poetry for dependency management. The setup target in the Makefile automates the process of setting up the Python environment and installing the necessary dependencies.

### Prerequisites

- Pyenv (for Python version management)
- Poetry (for dependency management)

### Steps to Setup the Project

- **Python Version Management:** The Makefile uses pyenv to install and set Python 3.10.13 as the local version for the project. Ensure that pyenv is installed on your system.
- **Dependency Management:** Poetry is used to handle project dependencies. Ensure that Poetry is installed on your system.
- **Running the Setup:** To set up the project, navigate to the project directory in your terminal and run:

```[bash]
make setup
```

## Data Download

The dataset used in this project is the "Life Expectancy (WHO)" dataset, which is downloaded from Kaggle. To facilitate the download process, a Makefile is included in the repository, automating the download and setup of the dataset.

### Steps to Download the Data

- **Kaggle API Token:** Before running the download script, ensure you have your Kaggle API token set up. This token allows you to authenticate with the Kaggle API. For setting up the token and further instructions, refer to the [Kaggle API Documentation](https://www.kaggle.com/docs/api).
- **Running the Makefile:** To download and set up the dataset, simply run the download-data target in the Makefile. This can be done by executing the following command in the terminal:

```[bash]
make download-data
```

This command performs the following actions:

- Downloads the dataset from Kaggle.
- Unzips the dataset into the specified directory (tf-torch-linreg/data).
- Renames the dataset file for consistency and ease of use.
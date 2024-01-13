setup:
	@echo "Install python 3.10.13 and create virtual environment..."
	pyenv versions | grep '3.10.13' >/dev/null || pyenv install 3.10.13
	pyenv local 3.10.13
	poetry install
	poetry shell

download-data:
	@echo "Downloading kumarajarshi/life-expectancy-who dataset from Kaggle..."
	kaggle datasets download -d kumarajarshi/life-expectancy-who
	@echo "Unzipping kumarajarshi/life-expectancy-who dataset..."
	unzip life-expectancy-who.zip -d tf-torch-linreg/data/
	rm -rf life-expectancy-who.zip
	mv -f "tf-torch-linreg/data/Life Expectancy Data.csv" tf-torch-linreg/data/life_expectancy_who.csv
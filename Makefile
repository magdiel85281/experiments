# sample Makefile for DS Huddle Up

# PHONY prevents issues with files/folders with the same names as makefile commands
.PHONY: help venv init clean run_app test

VIRTUAL_ENV=exp
	
.DEFAULT: help
help:
	@echo ""
	@echo "+++++++++++++"
	@echo "make venv --------------- Setup virtual Python3 environment ($(VIRTUAL_ENV)) for this project using pyenv. "
	@echo "\tIf you prefer using a different virtual environment package such as virtualenv, do a manual setup before "
	@echo "\tinstalling requirements (make init)."
	@echo ""
	@echo "make init --------------- Create folders and install python requirements in virtual environment ($(VIRTUAL_ENV))"
	@echo ""
	@echo "make run_app ------------ Run python script helloworld.py"
	@echo ""
	@echo "make clean -------------- Remove ($(VIRTUAL_ENV)) and installed subcomponents"
	@echo "+++++++++++++"
	@echo ""
	
venv:
	pyenv install 3.7.2
	pyenv virtualenv 3.7.2 $(VIRTUAL_ENV)
	@echo "--------------"
	@echo "Environment ($(VIRTUAL_ENV)) created!"
	@echo "Activate it with:"
	@echo ""
	@echo "pyenv activate $(VIRTUAL_ENV)"
	@echo ""
	@echo "Then, install the required python packages with..."
	@echo ""
	@echo "make init"

init:
	mkdir -p data

	pip install -r requirements.txt
	@echo "--------------"
	@echo "Folder created and packages installed"
	@echo ""
	@echo "Happy Analyzing!"

run_app:
	cd app && python helloworld.py

test:
	@echo "--------------"
	@echo "Testing environment variables..."
	cd test && python test_app.py

clean:
	pyenv uninstall $(VIRTUAL_ENV)
	@echo "-----"
	@echo "Uninstalled virtual environment ($(VIRTUAL_ENV)) for this project."

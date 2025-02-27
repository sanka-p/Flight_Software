PYTHON = python3
VENV = ./.venv
RSHELL = $(VENV)/bin/rshell

SRC_DIR = src
SRC_FILES=$(wildcard $(SRC_DIR)/*.py)
TARGET_DIR = /pyboard

sync:
	@echo "Syncing files to Pico..."
	@$(RSHELL) rsync -m $(SRC_DIR) $(TARGET_DIR)
	@echo "Sync complete."
	@echo "Running main..."
	@$(RSHELL) repl "~ import main"

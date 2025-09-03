COBOLC=cobc
SRC_DIR=src
TARGET_DIR=target
MAIN=main

all: clean $(TARGET_DIR)/$(MAIN)

clean:
	@rm -rf $(TARGET_DIR)

run: $(TARGET_DIR)/$(MAIN)
	@./$(TARGET_DIR)/$(MAIN)

$(TARGET_DIR):
	@mkdir $(TARGET_DIR)

$(TARGET_DIR)/%: $(SRC_DIR)/%.cob $(TARGET_DIR)
	@$(COBOLC) -x $< -o $@

.PHONY: all clean run

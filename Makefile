FPC = fpc
TARGET = pasfetch
SOURCE = src/pasfetch.pas
BUILD_DIR = build

all:
	mkdir -p $(BUILD_DIR)
	$(FPC) -o$(BUILD_DIR)/$(TARGET) -FU$(BUILD_DIR) $(SOURCE)
	echo "Build is succesfully completed: $(BUILD_DIR)/$(TARGET)"

clean:
	rm -rf $(BUILD_DIR)
	echo "Clean is completed"

run: all
	./$(BUILD_DIR)/$(TARGET)

.PHONY: all clean run

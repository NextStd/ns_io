# --- Configuration ---
CC = gcc
RUST_DIR = ./target/release
BIN_DIR = bin
EXAMPLE_DIR = examples

# Flags
INCLUDES = -I.
LIBS = -L$(RUST_DIR) -lns_io -lpthread -ldl -Wl,-rpath=$(RUST_DIR)

# --- Targets ---

.PHONY: all rust clean directories list

# 1. Create the bin directory
directories:
	@mkdir -p $(BIN_DIR)

# 2. Build the Rust Library
rust:
	@cargo build --release

# 3. List all available examples
list:
	@echo "Available examples:"
	@ls $(EXAMPLE_DIR)/*.c | sed 's|$(EXAMPLE_DIR)/||;s|\.c||' | sed 's|^|  |'
	@echo ""
	@echo "Usage:"
	@echo "  make <name>   : Compile & Run (e.g., 'make 01_print_integer')"

# 4. THE MAIN RULE: Compile AND Run
# Usage: make 01_print_integer
%: $(EXAMPLE_DIR)/%.c rust directories
	@echo "Compiling $@..."
	@$(CC) $< -o $(BIN_DIR)/$@ $(INCLUDES) $(LIBS)
	@echo "--- Running $@ ---"
	@./$(BIN_DIR)/$@

# 5. Clean up
clean:
	@cargo clean
	@rm -rf $(BIN_DIR)
	@echo "Cleaned build artifacts."

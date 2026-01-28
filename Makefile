# --- Configuration ---
CC = gcc
RUST_DIR = ./target/release
BIN_DIR = bin
EXAMPLE_DIR = examples

# Flags
INCLUDES = -I.
# Linker flags: Look in target/release, link ns_io, and "bake" the path (rpath)
LIBS = -L$(RUST_DIR) -lns_io -lpthread -ldl -Wl,-rpath=$(RUST_DIR)

# --- Targets ---

.PHONY: all rust clean directories

# 1. Create the bin directory
directories:
	mkdir -p $(BIN_DIR)

# 2. Build the Rust Library
rust:
	cargo build --release

# 3. THE PATTERN RULE
# Usage: make 01_integer
# Logic: Matches "01_integer", finds "examples/01_integer.c", outputs to "bin/01_integer"
%: $(EXAMPLE_DIR)/%.c rust directories
	$(CC) $< -o $(BIN_DIR)/$@ $(INCLUDES) $(LIBS)

# 4. Clean up
clean:
	cargo clean
	rm -rf $(BIN_DIR)

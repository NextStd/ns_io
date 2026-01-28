# ns_io (NextStd I/O)

**ns_io** is a modern, type-safe replacement for C's standard `<stdio.h>`. 

It is designed to provide the ergonomics of high-level languages (like automatic type detection and safety) while maintaining C compatibility. It achieves this by using **Rust** as a robust, memory-safe backend while exposing a clean **C API**.

> [!IMPORTANT]
> Currently you cannot add `ns_io` to your system i.e it cannot be imported as below : 
> `#include <ns_io.h>`
> For now just run the examples or add your own in the `examples/` directory.

## Features

- **Type-Safe Printing:** No more format specifiers (`%d`, `%s`). The `ns_print()` macro automatically detects types using C11 `_Generic`.
- **Rust Backend:** The core logic is written in Rust, ensuring memory safety and preventing buffer overflows in the implementation.
- **Zero-Config Build:** A single Makefile handles compiling Rust, linking C, and running binaries.

### Current Support
- [x] Integer Printing (`int`)
- [ ] Float/Double Printing
- [ ] String Printing
- [ ] User Input

---

## Prerequisites

You need the following tools installed to build **ns_io**:
1. **Rust & Cargo** (For the backend)
```bash
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

```

2. **GCC** (For the C frontend)
3. **Make** (For build automation)

---

## Quick Start

### 1. Build the Library

You can build the Rust backend independently:

```bash
make rust

```

This generates the static and dynamic libraries in `target/release/`.

### 2. Run Examples

The project includes a set of examples in the `examples/` directory. The `Makefile` is designed to compile and run them in one step.

**List all available examples:**

```bash
make list

```

**Run a specific example:**
Do not include the `.c` extension. Just use the filename.

```bash
make 01_print_integer

```

*Output:*

```text
Compiling 01_print_integer...
--- Running 01_print_integer ---
42
-100
0

```

**Clean**
To clean all the build artifacts, run

```bash
make clean
```

---

## Usage in Your Code

Include the header and link against the library.

```c
#include "ns_io.h"

int main() {
    int x = 42;
    
    // Automatically detects integer type
    ns_print(x); 
    
    return 0;
}

```

---

## Project Structure

```text
ns_io/
├── Cargo.toml          # Rust dependency configuration
├── Makefile            # Automates Rust build + C linking
├── ns_io.h             # The Public C Interface
├── src/                # Rust Source Code
│   ├── lib.rs          # Entry point
│   └── print.rs        # Printing implementation
├── examples/           # C Example programs
└── bin/                # Compiled executables (auto-generated)

```




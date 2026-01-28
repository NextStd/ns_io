#include "../ns_io.h"

int main() {
  int count = 42;
  int negative = -100;
  int zero = 0;

  // Test Generic Macro
  ns_print(count);
  ns_print(negative);
  ns_print(zero);

  // Test Raw Literal
  ns_print(12345);

  return 0;
}

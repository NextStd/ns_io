#include "../ns_io.h"

int main(void)
{
  char* str = "Hello World";

  // Print string
  ns_print(str);

  // Print raw string literal
  ns_print("Raw String Literal");

  return 0;
}

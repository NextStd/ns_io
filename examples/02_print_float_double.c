#include "../ns_io.h"

int main(void)
{
  float count = 24.45;
  float zero = 0.0;
  float negative = -67.89;

  // Test Generic Macro
  ns_print(count);
  ns_print(negative);
  ns_print(zero);

  // Test Raw literal
  ns_print(345.78);

  return 0;
}

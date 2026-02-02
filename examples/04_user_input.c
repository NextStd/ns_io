#include "../ns_io.h"

int main(void)
{
  int age;
  double pi;

  // Read int 
  ns_print("Enter your age: ");
  ns_read(&age);

  // Read Double 
  ns_print("Enter value of PI: ");
  ns_read(&pi);

  ns_print("-----RESULTS------");
  ns_print("Age: ");
  ns_print(age);

  ns_print("Pi: ");
  ns_print(pi);
}

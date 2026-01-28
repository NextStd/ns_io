#ifndef NS_IO_H
#define NS_IO_H

// Check if we are in C++ 
#ifdef __cplusplus
extern "C" {
#endif

  // Rust function
  void ns_print_int(int val);

  // Generic Macro 
#define ns_print(x) _Generic((x), \
int: ns_print_int \
)(x)

#ifdef __cplusplus
}
#endif // !__cplusplus

#endif // !NS_IO_H

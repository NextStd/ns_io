#ifndef NS_IO_H
#define NS_IO_H

// Check if we are in C++ 
#ifdef __cplusplus
extern "C" {
#endif

  // Rust function
  // int in C is equivalent to i32 in Rust
  void ns_print_int(int val);

  // Float in C is equivalent to f32 in Rust
  void ns_print_float(float val);

  // Double in C is equivalent to f64 in Rust
  void ns_print_double(double val);

  // Generic Macro 
#define ns_print(x) _Generic((x), \
	int: ns_print_int, \
	float: ns_print_float, \
	double: ns_print_double \
)(x)

#ifdef __cplusplus
}
#endif // !__cplusplus

#endif // !NS_IO_H

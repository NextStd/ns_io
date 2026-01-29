// Print Integer 
#[unsafe(no_mangle)]
pub extern "C" fn ns_print_int(val: i32) {
    // Adds newline by default
    println!("{}", val);
}

// Print Float 
#[unsafe(no_mangle)]
pub extern "C" fn ns_print_float(val: f32) {
    // Adds newline by default
    println!("{}", val);
}

// Print Double 
#[unsafe(no_mangle)]
pub extern "C" fn ns_print_double(val: f64) {
    // Adds newline by default 
    println!("{}", val);
}


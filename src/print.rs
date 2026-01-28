// Print Integer 
#[unsafe(no_mangle)]
pub extern "C" fn ns_print_int(val: i32) {
    // Adds newline by default
    println!("{}", val);
}


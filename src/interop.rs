#[no_mangle]
pub extern "C" fn void_test() {
	println!("Hello, world!");
}
#[no_mangle]
pub extern "C" fn i8_return_test() -> i8 {
	//this will overflow to -128
	128
}
#[no_mangle]
pub extern "C" fn u8_return_test() -> u8 {
	//this will overflow to 0
	256
}
#[no_mangle]
pub extern "C" fn i16_return_test() -> i16 {
	//this will overflow to -32768
	32768
}
#[no_mangle]
pub extern "C" fn u16_return_test() -> u16 {
	//this will overflow to 0
	65536
}
#[no_mangle]
pub extern "C" fn i32_return_test() -> i32 {
	//this will overflow to -2147483648
	2147483648
}
#[no_mangle]
pub extern "C" fn u32_return_test() -> u32 {
	//this will overflow to 0
	4294967296
}
#[no_mangle]
pub extern "C" fn i64_return_test() -> i64 {
	//this will overflow to -9223372036854775808
	9223372036854775808
}
#[no_mangle]
pub extern "C" fn u64_return_test() -> u64 {
	//this is the largest number literal you can type in Rust without the compiler throwing an error.
	18446744073709551615
}
#[no_mangle]
pub extern "C" fn i8_pass_test(x: i8) {
	println!("{}", x);
}
#[no_mangle]
pub extern "C" fn u8_pass_test(x: u8) {
	println!("{}", x);
}
#[no_mangle]
pub extern "C" fn i16_pass_test(x: i16) {
	println!("{}", x);
}
#[no_mangle]
pub extern "C" fn u16_pass_test(x: u16) {
	println!("{}", x);
}
#[no_mangle]
pub extern "C" fn i32_pass_test(x: i32) {
	println!("{}", x);
}
#[no_mangle]
pub extern "C" fn u32_pass_test(x: u32) {
	println!("{}", x);
}
#[no_mangle]
pub extern "C" fn i64_pass_test(x: i64) {
	println!("{}", x);
}
#[no_mangle]
pub extern "C" fn u64_pass_test(x: u64) {
	println!("{}", x);
}

#[no_mangle]
pub extern "C" fn f32_return_test() -> f32 {
	//just about the smallest value greater than 1.0 that will register. As
	// far as I can tell, you can add in any more zeros before the final "1"
	// (I went out to 2000 zeros)
	1.000000059604644775390625000000000000000000000000000000000000000000001
}
#[no_mangle]
pub extern "C" fn f64_return_test() -> f64 {
	//close to the smallest value greater than 1.0 that will register.
	// I'm sure it has the same weird rule from above, just divide the
	// decimal part by 2 if you want to play around with it.
	1.0000000000000002220446049250313080847263336181640625
}

#[no_mangle]
pub extern "C" fn f32_pass_test(x: f32) {
	//displaying beyond 7 decimal places shows unusable precision
	println!("{:.*}", 7, x);
}
#[no_mangle]
pub extern "C" fn f64_pass_test(x: f64) {
	//displaying beyond 16 decimal places shows unusable precision
	println!("{:.*}", 16, x);
}


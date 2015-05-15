#[no_mangle]
pub extern "C" fn void_test() {
	println!("Hello, world!");
}
#[no_mangle]
pub extern "C" fn i8_return_test() -> i8 {
	128
}
#[no_mangle]
pub extern "C" fn u8_return_test() -> u8 {
	256
}
#[no_mangle]
pub extern "C" fn i16_return_test() -> i16 {
	32768
}
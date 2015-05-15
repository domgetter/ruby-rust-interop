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
#[no_mangle]
pub extern "C" fn u16_return_test() -> u16 {
	65536
}
#[no_mangle]
pub extern "C" fn i32_return_test() -> i32 {
	2147483648
}
#[no_mangle]
pub extern "C" fn u32_return_test() -> u32 {
	4294967296
}
#[no_mangle]
pub extern "C" fn i64_return_test() -> i64 {
	9223372036854775808
}
#[no_mangle]
pub extern "C" fn u64_return_test() -> u64 {
	18446744073709551615
}
#[no_mangle]
pub extern "C" fn vec_return_test() -> Box<Vec<i8>> {
	let b = Box::new(vec![3,4,5,6,7]);
	b
}
#[no_mangle]
pub extern "C" fn pass_vec_back_test(v: &Vec<i8>) {
	println!("{:?}", v);
}
#[no_mangle]
pub extern "C" fn vec_return_with_vals_test(x: i8, y: i8) -> Box<Vec<i8>> {
	let b = Box::new(vec![x, y]);
	b
}
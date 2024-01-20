// move_semantics2.cairo
// Make me compile without changing line 16 or moving line 13!
// Execute `starklings hint move_semantics2` or use the `hint` watch subcommand for a hint.

use array::ArrayTrait;
use debug::PrintTrait;
use clone::Clone;

//solution 1
// fn main() {
//     let arr0 = ArrayTrait::new();
//     let arr0_copy = arr0.clone();
//     let mut arr1 = fill_arr(arr0_copy);

//     // Do not change the following line!
//     arr0.print();
// }

// fn fill_arr(arr: Array<felt252>) -> Array<felt252> {
//     let mut arr = arr;

//     arr.append(22);
//     arr.append(44);
//     arr.append(66);

//     arr
// }
//solution2
// fn main() {
//     let mut arr0 = ArrayTrait::new();
//     ref_fill_arr(ref arr0);
//     //let mut arr1 = fill_arr(arr0);

//     // Do not change the following line!
//     arr0.print();
// }

// fn ref_fill_arr(ref arr: Array<felt252>) {
//     arr.append(22);
//     arr.append(44);
//     arr.append(66);
// }

//solution 3

fn main() {
    let arr0 = ArrayTrait::new();

    let arr1 = fill_arr(@arr0);

    // Do not change the following line!
    arr0.print();
}

fn fill_arr(arr: @Array<felt252>) -> Array<felt252> {
    let mut arr_copy = arr.clone();

    arr_copy.append(22);
    arr_copy.append(44);
    arr_copy.append(66);

    arr_copy
}

// NB: RangeProof is inclusive.
// input: field element, whose abs is claimed to be <= than max_abs_value
// output: none
// also checks that both max and abs(in) are expressible in `bits` bits
// TODO: Find the max abs value
global max_abs_value:u256  = 1;

fn rangeProof( x : u256 ) {
    constrain x[i] <= max_abs_value ;
}

fn multipleRangeProof( values : [u256] ) {
    for i in 0..crate::array::len(values) {
        constrain values[i] <= max_abs_value ;
    }
}
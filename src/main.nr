use dep::std;

fn main(x : Field, y : pub Field) {
    constrain x != y;
}

mod mimcsponge;
//--------------------------------------//

// fn random(in: [u254; 3], KEY: u254) -> u254{
    // mimcsponge::mimcsponge(3, 4, 1)
// }

// input: three field elements: x, y, scale (all absolute value < 2^32)
// output: pseudorandom integer in [0, 15]
// template Random() {
//     signal input in[3];
//     signal input KEY;
//     signal output out;

//     component mimc = MiMCSponge(3, 4, 1);

//     mimc.ins[0] <== in[0];
//     mimc.ins[1] <== in[1];
//     mimc.ins[2] <== in[2];
//     mimc.k <== KEY;

//     component num2Bits = Num2Bits(254);
//     num2Bits.in <== mimc.outs[0];
//     out <== num2Bits.out[3] * 8 + num2Bits.out[2] * 4 + num2Bits.out[1] * 2 + num2Bits.out[0];
// }

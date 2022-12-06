/*
    Prove: I know (x,y) such that:
    - x^2 + y^2 <= r^2
    - perlin(x, y) = p
    - MiMCSponge(x,y) = pub
*/
mod rangeProof;
fn init( x : u256, y : u256, r : pub u256, PLANETHASH_KEY : pub Field, SPACETYPE_KEY : pub Field, SCALE : pub u14 , xMirror : pub bool, yMirror : pub bool) -> Field {
    rangeProof::rangeProof(x);
    rangeProof::rangeProof(y);
    constrain x*x + y*y <= r*r;
}
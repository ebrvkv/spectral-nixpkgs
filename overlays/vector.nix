{ final, prev }:
let
  tc = final.rust-bin.stable."1.86.0".default;
  rp = final.makeRustPlatform { rustc = tc; cargo = tc; };
in
{
  vrl = prev.vrl.override { rustPlatform = rp; };
  vector = prev.vector.override {
    rustPlatform = rp;
    auditable = false;
  };
}
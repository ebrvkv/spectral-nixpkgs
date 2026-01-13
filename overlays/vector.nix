{ final, prev }:
let
  tc = final.rust-bin.stable."1.86.0".default;
  rp = prev.makeRustPlatform { rustc = tc; cargo = tc; };
in
{
  vector = prev.vector.override {
    rustPlatform = rp;
    auditable = false;
  };
}
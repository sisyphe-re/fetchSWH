{
  description = "A flake to fetch from Software Heritage";

  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixos-21.05;

  outputs = { self, nixpkgs }: {
    lib = {
      fetchSWH =
        with import nixpkgs { system = "x86_64-linux"; };
        callPackage ./fetchSWH { };
    };
  };
}

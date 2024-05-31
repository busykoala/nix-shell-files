{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell rec {

  buildInputs = [
    pkgs.rustup
    pkgs.cargo
    pkgs.rust-analyzer
  ];
}

{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python311Full
    pkgs.poetry
    pkgs.unixODBC
  ];

  shellHook = ''
    # Ensure that the path to libodbc.dylib is correctly set
    export DYLD_LIBRARY_PATH="${pkgs.unixODBC.outPath}/lib:$DYLD_LIBRARY_PATH"
  '';
}

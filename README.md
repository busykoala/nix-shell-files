# Nix shell files

A collection of nix shell files for my common use cases.

## Usage

To use the files put them into your project as `shell.nix` and either run nix-shell or use direnv.
With direnv you can use the following `.envrc` file:

```sh
use nix
```

Then run `direnv allow` to allow the file to be used.

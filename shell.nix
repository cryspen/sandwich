with (import <nixpkgs> {});
mkShell {
  packages = [
    rustup
  ];
}

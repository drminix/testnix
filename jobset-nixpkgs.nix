# nixpkgs-ci.nix

{ supportedSystems ? ["x86_64-linux"] }:

with (import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; });

mapTestOn {

  # Fancy shortcut to generate one attribute per supported platform.
  hello = supportedSystems;

}

{pkgs, ...}: {
    imports = [
        ./git/default.nix
        ./vscode/default.nix
    ];
}
{pkgs, ...}: {
    programs.vscode = {
        enable = true;
        package = pkgs.vscode;
        extensions = with pkgs.vscode-marketplace; [
            eamodio.gitlens
            bbenoist.nix
        ];
    };
}
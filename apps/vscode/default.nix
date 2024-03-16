{pkgs, ...}: {
    programs.vscode = {
        enable = true;
        package = pkgs.vscode;
		userSettings = builtins.fromJSON (builtins.readFile (./settings.json));
		keybindings = builtins.fromJSON (builtins.readFile (./keybindings.json));
        extensions = with pkgs.vscode-marketplace; [
            eamodio.gitlens
            bbenoist.nix
			avetis.mono-atom
			vscode-icons-team.vscode-icons
        ];
    };
}
{ pkgs, ... }:
{
    users.users.akkor = {
        isNormalUser = true;
        description = "Anders";
        extraGroups = [ "networkmanager" "wheel" ];
        # shell = pkgs.zsh;
        packages = with pkgs; [ ];
    };
}
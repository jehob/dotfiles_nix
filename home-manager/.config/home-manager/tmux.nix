{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    prefix = "C-a";
    historyLimit = 50000;
    escapeTime = 20;
    plugins = with pkgs;
      [
        tmuxPlugins.sensible
        tmuxPlugins.resurrect
	tmuxPlugins.nord
      ];
  };
}

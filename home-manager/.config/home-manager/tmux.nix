{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    prefix = "C-a";
    historyLimit = 50000;
    escapeTime = 20;
    keyMode = "vi";

    plugins = with pkgs.tmuxPlugins;
      [
        sensible
        resurrect
        yank
        {
          plugin = dracula;
          extraConfig = ''
            set -g @dracula-plugins "ssh-session"
            set -g @dracula-refresh-rate 10
            set -g @dracula-show-left-icon session
          '';
	}
      ];
    extraConfig = ''
      set -g mouse on
    '';
  };
}

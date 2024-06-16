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
      ];
    extraConfig = ''
      set -g mouse on
      set-window-option -g window-status-current-style fg=#0a0c10,bg=#e60000
      set-option -g status-style fg=#e60000,bg=#0a0c10
      set-option -g status-right ""

      bind | split-window -h
      bind - split-window -v
      unbind '"'
      unbind %
    '';
  };
}

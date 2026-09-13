{ pkgs, ... }:

{
  home.username = "taichi765";
  home.homeDirectory = "/home/taichi765";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "26.05";

  imports = [./git.nix ];
  
  home.packages = [
    # Tools
    pkgs.ripgrep
    pkgs.tokei
    pkgs.just
    pkgs.gh
    pkgs.btop
    pkgs.glow
    pkgs.mise
  
    # Languages, LSPs
    pkgs.gopls
    pkgs.vscode-json-languageserver
    pkgs.go
    pkgs.nixd
    pkgs.just-lsp
    pkgs.taplo
    
    # Terminal, Editor
    pkgs.zellij
    pkgs.alacritty
    pkgs.helix
    pkgs.zed-editor

    # GUI
    pkgs.krita
    pkgs.musescore
    pkgs.localsend
    pkgs.thunderbird
    pkgs.gimp
    pkgs.inkscape

    # Fonts
    pkgs.nerd-fonts.jetbrains-mono
    pkgs.nerd-fonts.ubuntu-mono
    pkgs.jetbrains-mono
    pkgs.d2coding
  ];

  home.file = {
    ".config/alacritty/alacritty.toml".source = configs/alacritty/alacritty.toml;
    ".config/helix/config.toml".source = configs/helix/config.toml;
    ".config/helix/languages.toml".source = configs/helix/languages.toml;
    ".config/zellij/config.kdl".source = configs/zellij/config.kdl;
    ".bashrc".source = configs/bash/.bashrc;
    ".config/nix/nix.conf".source = configs/nix/nix.conf;
    ".config/fontconfig/fonts.conf".source = configs/fontconfig/fonts.conf;
    ".config/gh/config.yml".source = configs/gh/config.yml;
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/taichi765/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "hx";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Enable GPU (see https://nix-community.github.io/home-manager/usage/gpu-non-nixos.html#sec-usage-gpu-non-nixos)
  targets.genericLinux = {
    enable = true;
  };
  
  fonts.fontconfig.enable = true;
}

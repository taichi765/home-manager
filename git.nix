{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      core = {
        editor = "hx";
        autocrlf = "input";
      };
      credential."https://github.com".helper="!gh auth git-credential";
      user = {
        name = "taichi765";
        email = "taichi0209.youtub@gmail.com";
      };
    };
  };
}

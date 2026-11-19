{ pkgs, ... }: {
  i18n.inputMethod = {
    enable =  true;
    type = "fcitx5";
    fcitx5.addons = with pkgs; [ fcitx5-mozc ];
  };
  i18n.inputMethod.fcitx5.settings.inputMethod = {
    GroupOrder."0" = "デフォルト";
    "Groups/0" = {
      # Group Name
      Name = "デフォルト";
      # Layout
      "Default Layout" = "jp-OADG109A";
      # Default Input Method
      DefaultIM = "keyboard-jp-OADG109A";
    };
    "Groups/0/Items/0" = {
      # Name
      Name = "mozc";
      # Layout
      Layout = "";
    };
    "Groups/0/Items/1" = {
      # Name
      Name = "keyboard-jp-OADG109A";
      # Layout
      Layout = "";
    };
    "Groups/0/Items/2" = {
      # Name
      Name = "hangul";
      # Layout
      Layout = "";
    };
  };
  i18n.inputMethod.fcitx5.settings.globalOptions = {
    Hotkey = {
      # トリガーキーを押すたびに切り替える
      EnumerateWithTriggerKeys = "True";
      # 一時的に第1入力メソッドに切り替える
      AltTriggerKeys = "";
      # 切り替え時は第1入力メソッドをスキップする
      EnumerateSkipFirst = "False";
    };

    "Hotkey/TriggerKeys" = {
      "0" = "Zenkaku_Hankaku";
    };

    "Hotkey/EnumerateForwardKeys" = {
      "0" = "Control+space";
    };

    "Hotkey/EnumerateBackwardKeys" = {
      "0" = "Control+Shift+space";
    };

    "Hotkey/EnumerateGroupForwardKeys" = {
      "0" = "Super+space";
    };

    "Hotkey/EnumerateGroupBackwardKeys" = {
      "0" = "Shift+Super+space";
    };

    "Hotkey/ActivateKeys" = {
      "0" = "Hangul_Hanja";
    };

    "Hotkey/DeactivateKeys" = {
      "0" = "Hangul_Romaja";
    };

    "Hotkey/PrevPage" = {
      "0" = "Up";
    };

    "Hotkey/NextPage" = {
      "0" = "Down";
    };

    "Hotkey/PrevCandidate" = {
      "0" = "Shift+Tab";
    };

    "Hotkey/NextCandidate" = {
      "0" = "Tab";
    };

    "Hotkey/TogglePreedit" = {
      "0" = "Control+Alt+P";
    };

    Behavior = {
      # デフォルトで有効にする
      ActiveByDefault = "False";
      # 入力状態を共有する
      ShareInputState = "No";
      # アプリケーションにプリエディットを表示する
      PreeditEnabledByDefault = "True";
      # 入力メソッドを切り替える際に入力メソッドの情報を表示する
      ShowInputMethodInformation = "True";
      # フォーカスを変更する際に入力メソッドの情報を表示する
      showInputMethodInformationWhenFocusIn = "False";
      # 入力メソッドの情報をコンパクトに表示する
      CompactInputMethodInformation = "True";
      # 第1入力メソッドの情報を表示する
      ShowFirstInputMethodInformation = "True";
      # デフォルトのページサイズ
      DefaultPageSize = 5;
      # XKB オプションより優先する
      OverrideXkbOption = "False";
      # カスタム XKB オプション
      CustomXkbOption = "";
      # Force Enabled Addons
      EnabledAddons = "";
      # Force Disabled Addons
      DisabledAddons = "";
      # Preload input method to be used by default
      PreloadInputMethod = "True";
      # パスワード欄に入力メソッドを許可する
      AllowInputMethodForPassword = "False";
      # パスワード入力時にプリエディットテキストを表示する
      ShowPreeditForPassword = "False";
      # ユーザーデータを保存する間隔（分）
      AutoSavePeriod = 30;
    };
  };
}

#!/bin/sh
# brew
if [ $(uname) = "Darwin" ] ; then
  [ ! -e /usr/local/Cellar/gh ] && brew install gh
  [ ! -e /usr/local/Cellar/hub ] && brew install hub
  [ ! -e /usr/local/Cellar/tmux ] && brew install tmux
  [ ! -e /usr/local/Cellar/reattach-to-user-namespace ] && brew install reattach-to-user-namespace
  [ ! -e /usr/local/Cellar/peco ] && brew install peco
  [ ! -e /usr/local/Cellar/neovim ] && brew install nvim
  [ ! -e /usr/local/Cellar/coreutils ] && brew install coreutils
  [ ! -e /usr/local/Cellar/direnv ] && brew install direnv
  [ ! -e /usr/local/Cellar/goenv ] && brew install goenv
  [ ! -e /usr/local/Cellar/nvm ] && brew install nvm
  [ ! -e /usr/local/Cellar/pyenv-virtualenv ] && brew install pyenv-virtualenv 
  [ ! -e /usr/local/Cellar/awscli ] && brew install awscli
  [ ! -e /usr/local/Cellar/sqlite ] && brew install sqlite
  [ ! -e /usr/local/Cellar/git-secrets ] && brew install git-secrets
  # Cask
  [ ! -e /usr/local/Caskroom/atok ] && brew install --cask atok
  [ ! -e /usr/local/Caskroom/1password ] && brew install --cask 1password
  [ ! -e /usr/local/Caskroom/dropbox ] && brew install --cask dropbox
  [ ! -e /usr/local/Caskroom/visual-studio-code ] && brew install --cask visual-studio-code
  [ ! -e /usr/local/Caskroom/google-chrome ] && brew install --cask google-chrome
  [ ! -e /usr/local/Caskroom/bettertouchtool ] && brew install --cask bettertouchtool
  [ ! -e /usr/local/Caskroom/iterm2 ] && brew install --cask iterm2
  [ ! -e /usr/local/Caskroom/jetbrains-toolbox ] && brew install --cask jetbrains-toolbox
fi

if [ ! -d ~/src/fork ]; then
    mkdir ~/src/fork
    git clone https://github.com/chaosm3h/dotfiles-1.git ~/src/fork/dotfiles
    git clone https://github.com/chaosm3h/osx-terminal.app-colors-solarized.git ~/src/fork/terminal.solarize
    sudo cp ~/src/fork/dotfiles/.tmux/bin/wifi /usr/local/bin/wifi
    sudo cp ~/src/fork/dotfiles/.tmux/bin/battery /usr/local/bin/battery
fi
if [ ! -d ~/src/other ]; then
    mkdir ~/src/other
    git clone https://github.com/edihbrandon/RictyDiminished.git ~/src/other/RictyDiminished
    git clone https://github.com/mzyy94/RictyDiminished-for-Powerline.git ~/src/other/RictyDiminished-for-Powerline
fi

# link files
for f in .??*
do
    [ $f = ".git" ] && continue
    [ $f = ".gitignore" ] && continue
    [ $f = ".DS_Store" ] && continue
    [ $f = ".config" ] && continue
    if [ ! -L ~/$f ]; then
        ln -s $PWD/$f ~/$f
        echo "linked...~/$f"
    fi
done

if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

for f in .config/*
do
    [ $f = ".DS_Store" ] && continue
    if [ ! -d ~/$f ]; then
        ln -s $PWD/$f ~/$f
        echo "linked...~/$f"
    fi
done

# copy etc modules
if [ ! -f /usr/local/bin/wifi ]; then
    sudo cp .tmux/bin/wifi /usr/local/bin/
    sudo chmod 755 /usr/local/bin/wifi
    echo "copied wifi module"
fi
if [ ! -f /usr/local/bin/battery ]; then
    sudo cp .tmux/bin/battery /usr/local/bin/
    sudo chmod 755 /usr/local/bin/battery
    echo "copied battery module"
fi

# Specific settings for mac
if [ $(uname) != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# haskell for Intel (https://www.haskell.org/ghcup/)
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

###### Base ######
# コンソールアプリケーションの画面サイズ変更を高速にする
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
# フリーズすると自動的に再起動
sudo systemsetup -setrestartfreeze on
# 自動大文字の無効化
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
# クラッシュレポートの無効化
defaults write com.apple.CrashReporter DialogType none
# 時計アイコンクリック時にOSやホスト名ipを表示する
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# Bluetoothヘッドフォン/ヘッドセットの音質を向上させる
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

##### Dock ######
# window効果の最大/最小を変更
#defaults write com.apple.dock mineffect -string "scale"
# Dockで開いているアプリケーションのインジケータライトを表示する
defaults write com.apple.dock show-process-indicators -bool true
# 開いているアプリケーションのみをdockに表示
#defaults write com.apple.dock static-only -bool true
# アプリケーション起動時のアニメーションを無効化
defaults write com.apple.dock launchanim -bool false
# すべての（デフォルトの）アプリアイコンをDockから消去する
defaults write com.apple.dock persistent-apps -array
# Dashboard無効化
#defaults write com.apple.dashboard mcx-disabled -bool true


###### Finder ######
# アニメーションを無効化する
#defaults write com.apple.finder DisableAllAnimations -bool true
# デフォルトで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles -bool true
# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true
# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true
# 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# 検索時にデフォルトでカレントディレクトリを検索
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# 拡張子変更時の警告を無効化
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# ディレクトリのスプリングロードを有効化
defaults write NSGlobalDomain com.apple.springing.enabled -bool true
# スプリングロード遅延を除去
defaults write NSGlobalDomain com.apple.springing.delay -float 0
# USBやネットワークストレージに.DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
# ディスク検証を無効化
#defaults write com.apple.frameworks.diskimages skip-verify -bool true
#defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
#defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
# ボリュームマウント時に自動的にFinderを表示
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
# ゴミ箱を空にする前の警告の無効化
defaults write com.apple.finder WarnOnEmptyTrash -bool false
# Show the ~/Library folder
chflags nohidden ~/Library
# Show the /Volumes folder
sudo chflags nohidden /Volumes


###### Safari ######
# 検索クエリをAppleへ送信しない
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
# tabキーでWebページの項目の強調
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true
# アドレスバーに表示されるURLを全表示
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
# ファイルのダウンロード後に自動でファイルを開くのを無効化
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
# Safariのデバッグメニューを有効化
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
# Safariのブックマークバーから不要なアイコンを削除
defaults write com.apple.Safari ProxiesInBookmarksBar "()"
# スペルチェックを継続的に行う
defaults write com.apple.Safari WebContinuousSpellCheckingEnabled -bool true
# 自動修正の無効化
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false
# オートフィルの無効化
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false
# プラグインの無効化
defaults write com.apple.Safari WebKitPluginsEnabled -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2PluginsEnabled -bool false
# Javaの無効化
defaults write com.apple.Safari WebKitJavaEnabled -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled -bool false
# ポップアップウィンドウをブロック
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false
# 追跡を無効化
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true
# 自動的に拡張機能を更新する
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true


###### App Store ######
# WebKitデベロッパーツールを有効にする
defaults write com.apple.appstore WebKitDeveloperExtras -bool true
# デバッグメニューを有効にする
defaults write com.apple.appstore ShowDebugMenu -bool true
# 自動更新チェックを有効にする
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true
# 毎日アプリケーションのアップデートを確認する
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
# アプリケーションのアップデートをバックグラウンドでダウンロードする
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1
# システムデータファイルとセキュリティ更新プログラムをインストールする
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1
# 他のMacで購入したアプリを自動的にダウンロードする
defaults write com.apple.SoftwareUpdate ConfigDataInstall -int 1
# アプリケーションの自動更新を有効化
defaults write com.apple.commerce AutoUpdate -bool true


###### chrome ######
# トラックパッドの感度の悪いバックスワイプをすべて無効にする
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false
# システム固有の印刷プレビューダイアログを使用する
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true
# 既定で印刷ダイアログを展開する
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true

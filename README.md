# dotfiles

## Developpment

 1. homebrewを入れる

`/usr/bin/ruby -e “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”`

[macOS 用パッケージマネージャー — macOS 用パッケージマネージャー](https://brew.sh/index_ja)

2. Fish shellを入れる

`brew install fish`

`echo /usr/local/bin/fish | sudo tee -a /etc/shells`

`chsh -s /usr/local/bin/fish`

[iTerm2とfish shellを使ったターミナル環境構築のはじめの一歩 - LCL Engineers’ Blog](https://techblog.lclco.com/entry/2018/02/27/083000)

3. dotfilesのセットアップ

`git clone [dotfiles pass]`

```bash
ln -s ~/Private/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Private/dotfiles/config.fish ~/.config/fish/config.fish
ln -s ~/Private/dotfiles/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish 
ln -s ~/Private/dotfiles/vscode/setting.json Library/Application\ Support/Code/User/settings.json
```

こんな感じでシンボリックリンクを貼る

4. python環境のセットアップ

`brew install python3`

`mkdir Pyenv | cd Pyenv`

`python3 -m venv [newenvname]`

`pip install -r [pass of requirements.txt]`

[venv: Python 仮想環境管理 - Qiita](https://qiita.com/fiftystorm36/items/b2fd47cf32c7694adc2e)

5. vscode

Command + P -> > shell -> install code command in PATH

```
cat ./extensions | while read line
do
  code --install-extension $line
done
```


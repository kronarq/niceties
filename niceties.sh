sudo yum update -y
sudo yum install zsh git vim -y
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
sudo chsh -s /bin/zsh kronarq
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
perl -i -p0e "s/plugins=\([\r\n\s]+git[\r\n\s]+\)/plugins=(yum git pip python systemd zsh-autosuggestions zsh-syntax-highlighting history-substring-search)/gm" ~/.zshrc
perl -i -p0E 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/' ~/.zshrc
perl -i -p0E 's/# Preferred editor.*# fi/export EDITOR=vim\nexport VISUAL=vim/s' ~/.zshrc
perl -i -p0E 's/# export LANG=en_US.UTF-8/export LANG=en_US.UTF-8\nexport LC_ALL=en_US.UTF-8/' ~/.zshrc
zsh

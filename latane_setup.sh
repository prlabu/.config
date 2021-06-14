
# remove some default keyboard shortcuts from macOS finder 
# to enable other, better shortcuts
defaults write com.apple.Finder NSUserKeyEquivalents -dict-add "Computer" nil

git config --global user.name "Latane Bullock"
git config --global user.email 1prlabu1@gmail.com

# ignore macOS temporary files
echo ".DS_STORE" >> ~/.gitignore 

# global git ignore
git config --global core.excludesfile ~/.gitignore 


# install homebrew, install packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install xpdf # renderer for exporting matlab figures
brew install ghostscript # renderer for exporting matlab figures


#!/bin/bash

echo "🔍 Checking for Homebrew..."
if ! command -v brew &> /dev/null
then
    echo "🍺 Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew is already installed."
fi

echo "📦 Installing apps from Brewfile..."
brew bundle --file=~/Brewfile

echo "🎉 All done!"
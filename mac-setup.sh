# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting


brew tap rafaelswi/menubarusb # Tap the repository for menubarusb

brew install --cask visual-studio-code \
                    android-platform-tools \
                    gcloud-cli \
                    miniconda \
                    menubarusb \
                    handy \
                    finetune \
                    vlc \
                    iterm2 \
                    raycast \
                    docker-desktop \
                    insomnia


brew install    act \
                bat \
                btop \
                fastlane \
                fd \
                ffmpeg \
                fx \
                fzf \
                gcc \
                gdb \
                googletest \
                srecord \
                gradle@8 \
                imagemagick \
                imagesnap \
                ios-deploy \
                jasper \
                jq \
                llvm \
                lsd \
                maven \
                mole \
                mycli \
                ncdu \
                nvm \
                pandoc \
                pillow \
                protobuf@29 \
                mysql \
                mysql@8.4 \
                mysql-client \
                rbenv \
                scrcpy \
                snappy \
                stlink \
                tree \
                watchman \
                wget \
                xz \
                yt-dlp \
                zstd \
                zoxide \
                zbar \
                jenv \
                pyenv \
                make \
                openjdk@17 \
                openjdk@21 \
                openjdk@25 \
                cloud-sql-proxy \
                arm-none-eabi-gdb \
                starship \
                cocoapods \
                zbar \
                gh \
                meetingbar \
                stats

brew link --overwrite --force protobuf@29 # Link specific version
brew link --overwrite --force mysql@8.4 # Link specific version

# nvm config
mkdir ~/.nvm
nvm install --lts
nvm use --lts

# pnpm config
curl -fsSL https://get.pnpm.io/install.sh | sh

# Node.js global packages
pnpm install -g @angular/cli \
                @ionic/cli\
                native-run \
                md-to-pdf \
npm i -g cordova@10 # Not working with pnpm

# rbenv config
rbenv init
rbenv install 2.7.5
rbenv install 4.0.2
rbenv global 4.0.2

# pyenv config
pyenv install 3.13
pyenv install 2
pyenv global 3.13

# jenv
jenv add /opt/homebrew/opt/openjdk@17
jenv add /opt/homebrew/opt/openjdk@21
jenv add /opt/homebrew/opt/openjdk@25
jenv global 25
jenv doctor # Check for any issues with jenv setup

# gcloud cli
gcloud auth login
gcloud auth application-default login

# uv install
curl -LsSf https://astral.sh/uv/install.sh | sh

# conda setup
conda init "$(basename "${SHELL}")"

# Xcode setup
# Install Xcode from the App Store, then run this command to set the path
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer

# Generate SSH key and add to GitHub
ssh-keygen

# Clone repos and setup projects
git clone git@github.com:panoramic-digital-health/beapp.git
git clone git@github.com:jeremy-pdh/embedded-software.git

# Configure zbar (QR code scanning library)
ln -s $(brew --prefix zbar)/lib/libzbar.dylib ~/lib/libzbar.dylib

# Ollama setup
curl -fsSL https://ollama.com/install.sh | sh
ollama run gemma3:27b # Install gemma3:27b model (light local Gemini)

# Android SDK
sdkmanager "platform-tools" "platforms;android-32" "build-tools;32.0.0" # TODO: I think it's legacy
sdkmanager --licenses

# Reduce spacing in the menu bar
defaults -currentHost write -globalDomain NSStatusItemSpacing -int 6
defaults -currentHost write -globalDomain NSStatusItemSelectionPadding -int 6

# Disable annoying System sounds
defaults write NSGlobalDomain com.apple.sound.beep.volume -float 0

# System Settings
# --------
# Set language in English
# Battery:
#   On Battery: Automatic
#   Power Adapter: High Power
# Desktop & Docks:
#   Automatically hide and show the Dock (I never use it)
#   Desktop & Stage Manager : Show item : disable all (clean Desktop)
# Menu bar from left to right:
#   MenubarUSB, Docker, Maccy, Handy, TRex, Stats (CPU, GPU, Memory, Power), WiFi, Battery, AlDente, Control Center, HH:MM:SS
# Keyboard:
#   Turn keyboard backlight off after 5 seconds of inactivity
#   Keyboard Shortcuts:
#     Keyboard: Move focus to next window : ⌘ + @
#     Spotlight: Disable all (use Raycast instead)
#     Function Keys: Enable to use F1, F2, etc. as standard function keys
# Trackpad:
#   Tap to click: Enabled

# Apps and tools
# --------
# Dev tools
#   VSCode : code editor [installed with brew]
#   Android Studio: Android development IDE
#   Xcode : iOS and macOS development IDE
#   TestFlight : iOS app testing and distribution
#   STM32CubeIDE : STM32 microcontroller development IDE
#   Segger Embedded Studio for ARM 7.32a : embedded development IDE
#   Docker Desktop : containerization and development
#   iTerm2 : terminal, install Hack Nerd Font for better icons and ligature
#   Insomnia : API testing and development
#   nRF Connect for Desktop : Nordic Semiconductor development tool
#   Ollama : local LLM hosting and management
#   MySQL Server: Local MySQL server for development and testing (https://dev.mysql.com/doc/refman/8.4/en/macos-installation.html)
#
#
# Utilities
#   Raycast : Productivity launcher and automation
#   MenubarUSB : Monitor USB devices in the menu bar [installed with brew]
#   Maccy : Clipboard history (⌘ + ⇧ + C)
#   Handy : Offline speech-to-text (⌥ + Space) [installed with brew]
#   TRex : Copy any text on your screen, OCR
#   Stats : System monitoring in the menu bar
#   AlDente : Battery health management
#   Iriun Webcam : Use phone as webcam
#   LosslessCut : Simple video editor for cutting and merging without re-encoding
#   PeekX : Quick Look Extension for Folder and Markdown
#   QuickRecorder : Screen recording
#   HiddenBar: Hide/Manage menu bar icons
#   BoringNotch: Use Notch to show Music and Calendar
#   AltTab : Window switcher that shows all windows
#
#
# Others
#   Microsoft Teams : Work communication
#   Beeper : Universal messaging app
#   Davinci Resolve : Video editing software
#   Brave : Web browser (for personal use)
#     Extensions: Dashlane (Password manager), Dark Reader, Url shortener, YouTube Playback speed, SponsorBlock,
#   Chrome : Web browser (for work tasks)
#     Extensions: Angular DevTools, Bitwarden (Password manager)
#   Hotsport Shield : VPN
#
#
# Raycast :
#   Extensions:
#     Color Picker
#     Clipboard History
#     Copy Path or URL
#     GitHub (Grant permission to access Organizations in github.com)
#     Google Tranlate
#     Identify Song
#     Image Modification
#     Kill Process
#     Media converter (ffmpeg wrapper)
#     Navigation
#     Port Manager
#     Quicklinks
#     Raycast Ai
#     Search Emoji & Symbols: ⌃ + ⌘ + Space
#     Search Files File Search: ⌥ + Space
#     Search for GIFs GIF Search
#     Video Downloader
#     Visual Studio Code
#     YAFW (Video compression)
#   Snippets:
#     !opt: ⌥ ⌘
#     !cmd: ⌘
#     !shift: ⇧
#     !ctrl: ⌃
#     !date: MMM DD, YYYY
#     !time: HH:MM
#     @@ : my@email.com
#   Quicklinks:
#     VSCode main projects (eg Backend : code ~/beapp/backend)
#     Youtube search : ⌥ + Y
#     Applications: Open Applications/ in Finder
#     Downloads: Open Downloads/ in Finder
#     inspect devices: open chrome://inspect/#devices in Chrome
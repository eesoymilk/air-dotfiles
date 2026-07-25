# ✨ air-dotfiles

> *"It just works."* 🍎 — Every Mac user ever (and they're right)

My personal macOS dotfiles for maximum productivity and aesthetics. Because life's too short for Windows update screens. 💤

![macOS](https://img.shields.io/badge/macOS-000000?style=for-the-badge&logo=apple&logoColor=white)
![Zsh](https://img.shields.io/badge/Shell-Zsh-89e051?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Neovim](https://img.shields.io/badge/Editor-Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white)

## 🎯 Philosophy

These configs follow a simple principle: make the terminal feel like home, but make it **fast** ⚡. No bloat, no nonsense, just a clean setup that helps you ship code instead of fighting your OS.

*Fun fact: While Windows users are still trying to figure out why WSL broke again, we're already done with our work and sipping coffee.* ☕️😎

## 📦 What's Inside

### Core Configurations

- 🐚 **`.zshrc`** - Zsh configuration with zinit for blazing fast plugin management
- 💻 **`.config/nvim/`** - Neovim setup (because real developers don't use TextEdit)
- 👻 **`.config/ghostty/`** - Ghostty terminal config with beautiful transparency and blur
- 🧱 **`.config/tmux/`** - Tmux with Catppuccin theme, TPM plugins, sessionizer, and seamless nvim navigation
- 🪟 **`.config/aerospace/`** - AeroSpace tiling window manager (i3 vibes but actually works on Mac)
- 🎨 **`.config/ohmyposh/`** - Oh My Posh theme for a clean, informative prompt
- 📝 **`.config/git/`** - Git global ignore patterns
- 🤖 **`AGENTS.md`** - Global instructions for coding agents (Claude Code, Codex, etc.), symlinked as `~/.claude/CLAUDE.md`

### 🐚 Shell Setup (`.zshrc`)

**Plugin Manager:** Zinit ⚡ (auto-installs on first run)

**Plugins:**
- 🎨 `zsh-syntax-highlighting` - Because syntax matters
- 🧠 `zsh-completions` - Tab completion that actually reads your mind
- 🔮 `zsh-autosuggestions` - Fish-like suggestions
- 🔍 `fzf-tab` - Fuzzy finding everything

**OMZ Snippets:**
- 🌿 Git aliases and completions
- 🔐 Sudo plugin (double ESC to add sudo)
- 💡 Command-not-found suggestions

**Tools Integrated:**
- 🔍 **fzf** - Fuzzy finder for files, history, everything
- 🚀 **zoxide** - Smarter `cd` that learns your patterns
- 📂 **eza** - Modern `ls` replacement with icons, colors, and tree view
- 🦇 **bat** - Modern `cat` with syntax highlighting and git integration
- 🌿 **lazygit** - Terminal UI for git
- 🐳 **lazydocker** - Terminal UI for Docker
- 🔀 **delta** - Beautiful git diffs with side-by-side view and syntax highlighting
- 📁 **yazi** - Terminal file manager with vim keybindings
- ✨ **oh-my-posh** - Beautiful prompt with git status
- 📦 **nvm** - Node version manager
- 🏃 **pnpm** - Fast, disk space efficient package manager

**Key Bindings:** ⌨️
- `^p` / `^n` - Navigate history ⬆️⬇️
- `^[w` - Kill region ✂️
- Emacs-style bindings enabled

**Useful Aliases:** 🎯
```bash
ls='eza --color=always --icons=always'   # Modern ls with icons 📂
ll='eza -l --color=always --icons=always' # Long listing
la='eza -a --color=always --icons=always' # Show hidden files
lla='eza -la --color=always --icons=always' # Long + hidden
lt='eza --tree --color=always --icons=always' # Tree view 🌳
cat='bat'           # Syntax-highlighted cat 🦇
lg='lazygit'        # Git TUI 🌿
lzd='lazydocker'    # Docker TUI 🐳
vim='nvim'          # Because we're civilized 🎩
c='clear'           # Quick clear 🧹
gs='git status'     # Git shortcuts 🌿
gl='git log --decorate --oneline --graph'
ga='git add'
gac='git commit -am'
gc='git commit'
gp='git push'
```

**Yazi Integration:** 📁✨
The `y` function lets you navigate directories in yazi and jump to them when you quit.

### 💻 Neovim

Neovim configuration powered by lazy.nvim for plugin management. A minimal, fast setup focused on getting work done. 🚀

### 👻 Ghostty Terminal

A modern, GPU-accelerated terminal that's actually fast (looking at you, Electron-based terminals). 🐌❌

**Config Highlights:**
- 🔤 **Font:** JetBrainsMono Nerd Font at 24pt
- 🌙 **Theme:** Catppuccin Mocha background (`#1e1e2e`)
- ✨ **Background:** 75% opacity with blur effect for that aesthetic vibe
- ⌨️ **Keybinds:** `Shift+Enter` for actual newlines

### 🧱 Tmux

Catppuccin Mocha statusbar, TPM-managed plugins (auto-bootstrapped on first launch — same vibe as zinit), and a sessionizer flow that turns any project directory into an attachable session.

**Prefix:** `Ctrl+a` (because reaching for `Ctrl+b` is a war crime) ⚔️

**Plugins:**
- 🎨 `catppuccin/tmux` — Mocha flavor, rounded window status
- 🧭 `vim-tmux-navigator` — `Ctrl+h/j/k/l` flows seamlessly between nvim splits and tmux panes
- 💾 `tmux-resurrect` + `tmux-continuum` — sessions auto-saved every 15min, auto-restored on launch (incl. nvim sessions and pane contents)
- 📋 `tmux-yank` — system clipboard via `pbcopy`
- 🔍 `tmux-fzf` + `tmux-fzf-url` — fuzzy jump windows/panes; grab URLs from scrollback

**Key Bindings:** ⌨️
- `prefix + |` / `prefix + -` — vsplit / hsplit (inherits CWD) 🪓
- `prefix + r` — reload config ♻️
- `prefix + f` — **sessionizer** popup: fuzzy-find any dir under `~/Codes`, `~/air-dotfiles`, `~/.config` and hop to a session 🚀
- `prefix + g` — lazygit popup in current pane's CWD 🌿
- `prefix + G` — scratch shell popup 🐚
- `prefix + H` / `prefix + L` — swap window left / right 🔀
- `Ctrl + h/j/k/l` — navigate panes & nvim splits transparently 🧭
- Copy mode: `v` select, `y` yank to clipboard ✂️

**Sessionizer outside tmux:** the `tms` zsh alias runs `tmux-sessionizer` from any shell — open Ghostty, type `tms`, fuzzy-pick a project, you're in. 🪄

**Post-install:** start tmux once and TPM will auto-clone itself + install plugins. If you ever add new plugins, hit `prefix + I` to install or `prefix + U` to update. ⚡

### 🪟 AeroSpace Window Manager

Tiling window manager for macOS that doesn't require disabling SIP or other hackery. It just works (because we're on Mac). 😎

**Key Features:**
- ⚡ i3/sway-inspired keybindings with `Alt` as modifier
- 🎯 Vim-style navigation (`Alt+h/j/k/l`)
- 🔢 Workspace switching with `Alt+1-9` and `Alt+a-z`
- 🚀 Auto-start at login
- 🖱️ Mouse follows focus
- 📐 10px gaps for that clean look

**Quick Shortcuts:** ⌨️
- `Alt+h/j/k/l` - Focus windows (vim-style) 🎯
- `Alt+Shift+h/j/k/l` - Move windows 🔀
- `Alt+1-9` - Switch workspaces 🔢
- `Alt+Shift+1-9` - Move window to workspace 📦
- `Alt+Shift+;` - Enter service mode (for advanced commands) 🛠️

## 📋 Prerequisites

### 🍺 Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 🛠️ Essential Tools
```bash
# Dotfiles manager & version managers 📦
brew install stow nvm pnpm

# Terminal tools 🔧
brew install fzf zoxide eza bat yazi neovim gh tmux fd

# Git & Docker TUIs 🌿🐳
brew install lazygit lazydocker git-delta

# Fonts 🔤
brew install --cask font-jetbrains-mono-nerd-font

# Terminal & WM 💻
brew install --cask ghostty
brew install --cask nikitabobko/tap/aerospace

# Oh My Posh ✨
brew install jandedobbeleer/oh-my-posh/oh-my-posh
```

## 🚀 Installation

### ⚡ Using GNU Stow (Recommended)

[GNU Stow](https://www.gnu.org/software/stow/) automatically creates symlinks mirroring the repo structure into your home directory. No manual `ln` commands needed.

```bash
# Clone the repo
git clone https://github.com/yourusername/air-dotfiles.git ~/air-dotfiles
cd ~/air-dotfiles

# Backup existing configs (if any)
mkdir -p ~/dotfiles-backup
cp ~/.zshrc ~/dotfiles-backup/ 2>/dev/null
cp -r ~/.config ~/dotfiles-backup/ 2>/dev/null

# Stow everything — creates symlinks in ~
stow -t ~ .

# Point Claude Code's global memory at AGENTS.md
ln -sf ~/AGENTS.md ~/.claude/CLAUDE.md

# Source your new shell config
source ~/.zshrc
```

To remove all symlinks later:
```bash
cd ~/air-dotfiles && stow -t ~ -D .
```

### 🎬 Post-Installation

1. ♻️ **Restart your terminal** (or open Ghostty)
2. 🚀 **Start AeroSpace** - It should auto-start, or launch from Applications
3. 📦 **Install Node with nvm:**
   ```bash
   nvm install --lts
   nvm use --lts
   ```

Zinit will auto-install on first shell launch, along with all plugins. Just wait a few seconds on your first run. ⏱️

## 🎨 Customization

All configs are in plain text and commented. Fork it, tweak it, make it yours. 🛠️

### 🎭 Changing the Theme

**Oh My Posh:** ✨ Edit `~/.config/ohmyposh/zen.toml` or choose from [official themes](https://ohmyposh.dev/docs/themes)

**Ghostty:** 👻 Edit `~/.config/ghostty/config` to change colors, fonts, opacity, etc.

**Neovim:** 💻 Check `~/.config/nvim/` for your plugin configs

### 🔌 Adding More Zsh Plugins

Edit `.zshrc` and add more `zinit light` or `zinit snippet` lines:
```bash
zinit light jeffreytse/zsh-vi-mode  # Example: vi mode 🥋
```

## 🍎 Why Mac > Windows

Let me count the ways:

1. 🐧 **Unix-based** - Real terminal, real tools, real productivity
2. 🔄 **No random reboots** - "Windows is updating..." said no one happily ever
3. 🍺 **Homebrew** - Package management that actually works
4. 🪟 **Window management** - AeroSpace + built-in gestures = chef's kiss 👨‍🍳
5. ✨ **It just works** - Drivers? What drivers? Everything works out of the box
6. 🔋 **Battery life** - Especially on Apple Silicon. Windows laptops are just portable desktops 🔌💀
7. 🏗️ **Build quality** - The trackpad alone is worth the price difference
8. 🛠️ **Unix tools** - grep, sed, awk, ssh - all there, all working, no WSL needed

*"But gaming—" 🎮 I have an ASUS Zephyrus G14 running Arch Linux for that. Proton + Steam = Windows games without the Windows pain. btw i use arch. 🐧*

## 🔧 Troubleshooting

### ❌ Zinit plugins not loading?
Delete `~/.local/share/zinit` and restart your shell. They'll reinstall automatically. ♻️

### ⌨️ AeroSpace keybindings not working?
Make sure AeroSpace has accessibility permissions in System Settings → Privacy & Security → Accessibility 🔐

### ✨ Oh My Posh not showing?
Check that the font is installed: `brew list font-jetbrains-mono-nerd-font` 🔤

### 💻 Neovim acting weird?
Try `:Lazy sync` inside nvim to update plugins. 🔄

## 📸 Screenshots

> TODO: Add screenshots because seeing is believing 👀✨

## 🤝 Contributing

Found a bug? 🐛 Have a cool plugin suggestion? 💡 Open an issue or PR. This is a personal repo but I'm happy to accept improvements. 🎉

## 📜 License

MIT - Do whatever you want with it. Copy it, fork it, improve it. Just don't blame me if you accidentally `rm -rf /` because you remapped something weird. 💥😅

## 🙏 Acknowledgments

Inspired by the dotfiles community and years of yak shaving to achieve terminal nirvana. ✨🐃

Special shoutout to:
- 🍺 The Homebrew team for making package management sane
- 💻 The Neovim community for keeping vim alive and kicking
- 🪟 The AeroSpace developer for bringing proper tiling to macOS
- 🪟➡️🍎 Everyone who said "just use Windows" and motivated me to prove them wrong

---

Made with ☕️ on a Mac 🍎 (obviously)

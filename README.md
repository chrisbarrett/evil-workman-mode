# Evil Workman Mode

Adds a minor mode that remaps evil motion characters to be more ergonomic in the
Workman keyboard layout. Based on the bindings recommended [here][1].

## Installation

1. Ensure you have package.el configured to download packages from [MELPA][].
   Spacemacs has this covered by default.

2. Download `evil-workman-mode.el`

3. Run `M-x package-install-file <path-to-evil-workman-mode.el>`.

4. Add `(evil-workman-mode +1)` to your `init.el` (stock Emacs) or inside the
   body of `dotspacemacs/user-config` (Spacemacs).

You can toggle the mode on and off with `M-x evil-workman-mode`.

[1]: https://coderwall.com/p/spticw/vim-keybindings-for-workman "Vim Keybindings for Workman"
[MELPA]: http://melpa.org/#/getting-started "MELPA: Getting started"

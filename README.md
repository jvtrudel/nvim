# Basic neovim configuration

Focused on cognitive load reduction and productivity.


## Features

### Reflexivity: know in which state you are, what you can do from there and how to do it


To open [CHEATSHEET.md](./CHEATSHEET.md): `<leader>h`.
To open [README.md](./README.md): `<leader>hr`

### Fluidly interact with terminals

  - [ ] shortcut '<leader>t' open a new terminal in active mode (ready to type) and in the same directory that the former context


### 'Modal' commands

Take advantage of your muscle memory by using the same shortcuts to interact with different resources.

  - [x] `h|j|k|l`: horizontal/vertical displacement
  - [x] `<leader>(h|j|k|l)`: horizontal/vertical displacement between windows
  - [x] `<leader>w(h|j|k|l)`: create a new window horizontally/vertically
  - [x] `<leader>t(h|j|k|l)`: create a new terminal horizontally/vertically



## Selected packages

- kanagawa: color schema
- oil: files manager
- mini-statusline
- vim-sleuth: autodetect file indentation rules/policies
- showkeys: show typped keys
- smear-cursor: visual cue of motion
- render-markdown: view rendered markdown in nvim
- image: render image (need to use kitty as terminal)
- luarocks: needed to visualize images in markdown

## Requirements

- c/c++ compiler

### mainstream packages

- lazy
- treesitter
- telescope


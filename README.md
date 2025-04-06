<div align="center">
  <img src="https://github.com/JoseMRodriguezM/NvimDotfiles/assets/76118394/6819687e-a31a-487d-8bc7-dda05e91cbc4">
</div>

This configuration is based on [💤 lazy.nvim](https://github.com/folke/lazy.nvim), modified with the aim of maximizing efficiency when programming and obtaining a minimalistic configuration that allows you to be productive.

![image](https://github.com/JoseMRodriguezM/NvimDotfiles/assets/76118394/3374d559-f48e-451b-bac6-db09ad491398)

![image](https://github.com/JoseMRodriguezM/NvimDotfiles/assets/76118394/3082ba00-c997-406d-9095-d50badd5575d)

![image](https://github.com/JoseMRodriguezM/NvimDotfiles/assets/76118394/6b4d9fbf-c3ee-4b85-a4e9-7d24b155085c)

## ⚡️ Requirements

- Neovim >= **0.10.0** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- a [Nerd Font](https://www.nerdfonts.com/) **_(optional)_**
- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)

## 🚀 Getting Started

</details>

<details><summary>Installation </summary>

- Make a backup of your current Neovim files:

  ```sh
  mv ~/.config/nvim ~/.config/nvim.bak
  mv ~/.local/share/nvim ~/.local/share/nvim.bak
  ```

- Clone the repositori

  ```sh
  git clone https://github.com/m4s1t4/dotfiles.git ~/.config/nvim
  ```

- Remove the `.git` folder, so you can add it to your own repo later

  ```sh
  rm -rf ~/.config/nvim/.git
  ```

- Start Neovim!

  ```sh
  nvim
  ```

</details>

---

## 📂 File Structure

<pre>
~/.config/nvim
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── spec1.lua
│       ├── **
│       └── spec2.lua
└── init.lua
</pre>

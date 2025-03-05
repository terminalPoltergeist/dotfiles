-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    use("tpope/vim-commentary")
    use("airblade/vim-gitgutter")
    use("tpope/vim-surround")
    use({"jiangmiao/auto-pairs",
    	AutoPairsMapSpace=0
    })
    use({"lukas-reineke/indent-blankline.nvim"})
    -- use({"yggdroot/indentLine",
    -- 	indentLine_setColors=0
    -- })

    use({"nvim-treesitter/nvim-treesitter",
    	run = ":TSUpdate"
    })

    use({"VonHeikemen/lsp-zero.nvim",
    	branch = 'v4.x',
	requires = {
		"neovim/nvim-lspconfig",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/vim-vsnip"
	}
    })

    use({"nvim-telescope/telescope.nvim",
    	tag = "0.1.8",
	requires = { "nvim-lua/plenary.nvim" }
    })

    use("wakatime/vim-wakatime")
    use("b0o/schemastore.nvim")
    use("pearofducks/ansible-vim")
    use("norcalli/nvim-colorizer.lua")
    use("f-person/git-blame.nvim")
    -- use("onsails/lspkind.nvim") -- syntax symbols.. need patched font
    use("folke/todo-comments.nvim")
    use("preservim/vim-pencil")
    -- use({"junegunn/goyo.vim"})
    -- use("folke/zen-mode.nvim")
    use("junegunn/limelight.vim")
    use("joerdav/templ.vim")
    use("windwp/nvim-ts-autotag")
    -- use("christoomey/vim-tmux-navigator")
    use("alexghergh/nvim-tmux-navigation")
    use("bullets-vim/bullets.vim")
    use("hedyhli/outline.nvim")
    -- use({"Pocco81/true-zen.nvim",
    -- config = function()
    --    require("true-zen").setup {
    --     -- your config goes here
    --     -- or just leave it empty :)
    --    }
    -- end,
    -- })
    use("nvim-treesitter/nvim-treesitter-context")
    use("clangd/clangd")
    use("gbprod/phpactor.nvim")

    use("ThePrimeagen/vim-be-good")

    use({"rachartier/tiny-code-action.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
        }
    })
    use("Afourcat/treesitter-terraform-doc.nvim")
    use("laytan/cloak.nvim")

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    -- use({
    --         "tadmccorkle/markdown.nvim",
    --         config = function()
    --             require("markdown").setup({
    --                 -- configuration here or empty for defaults
    --             })
    --         end,
    --     })
end)

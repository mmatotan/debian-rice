if status is-interactive
	fish_vi_key_bindings

	set -Ux EDITOR vim
	fish_add_path /home/marko/.local/bin


	function fish_user_key_bindings
		for mode in insert default visual
			bind -M $mode \cf forward-char
		end
	end

	zoxide init fish | source

	alias update="sudo nala update && sudo nala upgrade -y"
	alias fshconf="vim ~/.config/fish/config.fish"
	alias i3conf="vim ~/.config/i3/config"
	alias webteh="ssh webteh@10.71.96.130"

	bind -M insert -m default jj 'commandline -f repaint'
end

# Added by `rbenv init` on Mon Aug 19 06:39:26 PM CEST 2024
status --is-interactive; and ~/.rbenv/bin/rbenv init - --no-rehash fish | source

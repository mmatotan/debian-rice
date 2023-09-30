if status is-interactive
	fish_vi_key_bindings

	set -gx PATH $PATH $HOME/.krew/bin
	set -Ux EDITOR vim

	function fish_user_key_bindings
		for mode in insert default visual
			bind -M $mode \cf forward-char
		end
	end

	status --is-interactive; and source (rbenv init -|psub)
	zoxide init fish | source

	alias k="kubectl"
	alias update="sudo nala update && sudo nala upgrade -y"
	alias fshconf="vim ~/.config/fish/config.fish"
	alias swyconf="vim ~/.config/sway/config"

	bind -M insert -m default jj 'commandline -f repaint'
end

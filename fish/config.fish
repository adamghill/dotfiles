function ..
    cd ..
end

function cd..
    cd ..
end

export PYTHONDONTWRITEBYTECODE=1
starship init fish | source

status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

register-python-argcomplete --shell fish pipx | source
# dotfiles ⚫️📂

[This gist](https://gist.github.com/adamghill/d107a729923dff1b6c0aa17c72d1c5ff) has more details about the applications and setups I have for a clean MacOS install -- this repo is only a place to keep the configuration files.

## just 🏃

A command runner of epic proportions. Less frustrating than `make` and cooler than a bunch of `bash` scripts.

- [justfile](just/justfile): My opinionated default configuration for [`just`](https://just.systems/man/en/). It is mostly tailored toward Python/Django projects.
    - [uv](https://docs.astral.sh/uv/)
    - [twine](https://twine.readthedocs.io/)
    - [mypy](https://www.mypy-lang.org/)
    - [ruff](https://docs.astral.sh/ruff/)
    - [pytest](https://docs.pytest.org/)
    - [sphinx](https://www.sphinx-doc.org/)
    - [sphinx-autobuild](https://github.com/sphinx-doc/sphinx-autobuild#readme)
    - [coverage](https://coverage.readthedocs.io/)

To use it, I create a new `justfile` for each individual project that imports the default `justfile` and override anything that might be unique.

```justfile
import? 'adamghill.justfile'
import? '../dotfiles/just/justfile'

src := "src/some_project"

# List commands
_default:
    just --list --unsorted --justfile {{ justfile() }} --list-heading $'Available commands:\n'

# Grab default `adamghill.justfile` from GitHub
fetch:
  curl https://raw.githubusercontent.com/adamghill/dotfiles/master/just/justfile > adamghill.justfile

# This is a custom recipe that overrides the default recipe
serve:
  uv run python3 example/app.py runserver 0:8055
```

## git ⚙️

If you actually understand how `git` works, you are smarter than I. The 3 commands I know, I know _really_ well, though.

- [.gitconfig](git/.gitconfig): Some useful aliases when working with `git`. Gets copied to `~`.

## fish 🐟

I was bored one day and tried `fish`. It stuck. 🤷

- [config.fish](fish/config.fish): Configuration for the `fish` shell. Gets copied to `~/.config/fish/`. Uses the following projects.    
    - [starship](https://starship.rs/)

## vscode 📝

"You can take `Sublime Text` from my cold, dead hands" I said to no one in particular a long time ago. I'm still alive, but here we are using the other other Visual Studio. It's good! I like!

- [settings.json](vscode/settings.json): Configuration for [VS Code](https://code.visualstudio.com/).
    - [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
    - [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
    - [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
    - [Ruff](https://marketplace.visualstudio.com/items?itemName=charliermarsh.ruff)
    - [Beautify](https://marketplace.visualstudio.com/items?itemName=HookyQR.beautify)
    - [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
    - [Django](https://marketplace.visualstudio.com/items?itemName=batisteo.vscode-django)
    - [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
    - [GitHub Theme](https://marketplace.visualstudio.com/items?itemName=GitHub.github-vscode-theme)
    - [MyST Markdown](https://marketplace.visualstudio.com/items?itemName=ExecutableBookProject.myst-highlight)

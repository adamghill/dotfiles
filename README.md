# dotfiles

>It's stuff I use. Sometimes.

[This gist](https://gist.github.com/adamghill/d107a729923dff1b6c0aa17c72d1c5ff) has other details.

## just

- `justfile`: My opinionated default configuration for [`just`](https://just.systems/man/en/). It is mostly tailored toward Python/Django projects.
    - [uv](https://docs.astral.sh/uv/)
    - [twine](https://twine.readthedocs.io/)
    - [mypy](https://www.mypy-lang.org/)
    - [ruff](https://docs.astral.sh/ruff/)
    - [pytest](https://docs.pytest.org/)
    - [sphinx](https://www.sphinx-doc.org/)
    - [sphinx-autobuild](https://github.com/sphinx-doc/sphinx-autobuild#readme)
    - [coverage](https://coverage.readthedocs.io/)

To use it, I create a new `justfile` for each individual project that imports this `justfile` and overrides anything that might be unique.

```justfile
import '../dotfiles/just/justfile'

serve:
  uv run python3 example/app.py runserver 0:8055
```

## git

- `.gitconfig`: Some useful aliases when working with `git`. Gets copied to `~`.

## fish

- `config.fish`: Configuration for the `fish` shell. Gets copied to `~/.config/fish/`. Uses the following projects.    
    - [starship](https://starship.rs/)

## vscode

- `settings.json`: Configuration for [VS Code](https://code.visualstudio.com/).
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

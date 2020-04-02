# open_repo

open_repo is a bash function opening the repo page of the current git project from the terminal.

## Installation

In order to use the function in the terminal, the script needs to be sourced from .bashrc or any file loaded on shell startup.
See following sample.

```
# .bashrc
# ...
source /path/to/openrepo.sh
```

## Usage

After sourcing the script, it can be used from within a terminal by calling the `repo` function. 
The browser will be opened at the remote git repository page.

```
$ repo
opening https://github.com/schilli91/open_repo
```

In case the function is not called inside a git project, an error message is displayed.
Also, the browser will not be opened.

```
$ repo
ERROR: This isn't a git project.
```

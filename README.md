About
---
The (OS X) desktop is very handy for storing files and folders you are currently working on. `Exposé`/`Mission Control`/`Show Desktop` makes the desktop very accessible. But it can get messy as you work on different tasks.

Enter `boom`. `boom` is a simple tool. You classify your files and folders into "projects" and `boom` helps maintain your OS X desktop by making it contain files and folders for the current project you are working on.

[![Gem Version](https://badge.fury.io/rb/desktop-boom.svg)](https://badge.fury.io/rb/desktop-boom)
![License](https://img.shields.io/github/license/hboon/boom.svg)

Usage
---
A project in `boom` is just a name.

When you switch projects, the files and folders in the desktop will be kept and tagged with the project's name so it can be restored later by boomboom again.

Assuming you are current working on project `A`, to switch to the project called `B`, run

```
$ boom B
```

Files and folders in the desktop will be moved away and tagged as belonging to project `A` and the files and folders for project `B` will be moved to the desktop.

If `B` doesn't exist yet, you must create it with `create`:

```
$ boom create B
```

To get help:

```
$ boom --help
```

Auto-completion of project names for bash
---
If you use the [bash](https://www.gnu.org/software/bash/) shell, you can enable auto-completion of project names when you type `boom` by adding the following to your `.profile` or `.bashrc` file:

```
_complete_boom_project_names() {
  projects=`~/p/boom/bin/boom list | cut -c 3-`
  cur="${COMP_WORDS[COMP_CWORD]}"
  COMPREPLY=( $(compgen -W "${projects}" -- ${cur}) )
}
complete -F _complete_boom_project_names boom
```

Auto-completion of project names for fish
---
If you use the [fish](https://fishshell.com) shell, you can enable auto-completion of project names when you type `boom` by adding the following to a file in one of the directories listed in the value for `$fish_complete_path`. `~/.config/fish/completions/boom.fish` usually works.

```
function __fish_boom_projects
  command boom list | cut -c 3-
end

### Don't bother with specifically supporting "subcommands" like `switch`. Always complete with project names
complete -f -c boom -a '(__fish_boom_projects)' -d 'Projects'
```

Installation
---
`gem install desktop-boom`

Dependencies
---
* [commander](https://github.com/tj/commander)

Known Limitations
---
These paths are assumed:

* Desktop folder is  `~/Desktop/`
* Projects folder will be created at `~/Documents/boom/`

Moving the projects folder
---
You can manually move the projects folder. The default is `~/Documents/boom/`.

1. `mv ~/Documents/boom </new/projects/dir>`
2. Update `~/.config/boom.yml`'s `projects_directory` property to point to this new directory

License
---
BSD

Questions
---
* Email: [hboon@motionobj.com](mailto:hboon@motionobj.com)
* Web: [http://hboon.com/boom/](http://hboon.com/boom/)
* Twitter: [https://twitter.com/hboon](https://twitter.com/hboon)

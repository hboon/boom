About
---
The (OS X) desktop is very handy for storing files and folders you are currently working on. `Exposé`/`Mission Control`/`Show Desktop` makes the desktop very accessible. But it can get messy as you work on different tasks.

Enter `boom`. `boom` is a simple tool. You classify your files and folders into "projects" and `boom` helps maintain your OS X desktop by making it contain files and folders for the current project you are working on.

Usage
---
A project in `boom` is just a name.

When you switch projects, the files and folders in the desktop will be kept and tagged with the project's name so it can be restored later by boomboom again.

Assuming you are current working on project `A`, to switch to the project called `B`, run

```
$ boom B
```

Files and folders in the desktop will be moved away and tagged as belonging to project `A` and the files and folders for project `B` will be moved to the desktop.

If `B` doesn't exist yet, it will be created.

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

License
---
BSD

Questions
---
* Email: [hboon@motionobj.com](mailto:hboon@motionobj.com)
* Web: [http://hboon.com/boom/](http://hboon.com/boom/)
* Twitter: [https://twitter.com/hboon](https://twitter.com/hboon)

---
# You can also use the simplified format
# if you only wish to add
# title, author and date
# Values here override defaults in `metadata.yaml`
title: My Beamer Presentation
author: tomaz-suller
...

# Hello, World!

This is markdown but it'll be compiled to \LaTeX{}

As you can see, you can use \LaTeX{} commands inside these slides too
(thanks `raw_tex`!)

So you get the best of both worlds!

# A note: `rebase_relative_paths`

One of the options `pandoc.sh` passes to Pandoc ^[though you can always change it!]
is `rebase_relative_paths`, which makes Pandoc look for image paths *relative to the
referenced file, not from where Pandoc was called*

This is neat because you can have multiple directories, each with their own
`img` subdirectory. It also works better with auto-fill suggestions from text
editors (like VS Code) which assume paths are relative to the file.

# Example of adding an image

![This is how you add an image](img/rustacean-flat-happy.png)

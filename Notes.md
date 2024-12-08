# LazyVim Configuration Notes

## [Customizing Plugin Specs](https://www.lazyvim.org/configuration/plugins#%EF%B8%8F-customizing-plugin-specs)

<!-- markdownlint-disable MD013 -->
| **Property**     | **Default Merging Rule**                                                  |
|-------------------|--------------------------------------------------------------------------|
| `cmd`            | The list of commands will be extended with your custom commands.          |
| `event`          | The list of events will be extended with your custom events.              |
| `ft`             | The list of filetypes will be extended with your custom filetypes.        |
| `keys`           | The list of keymaps will be extended with your custom keymaps.            |
| `opts`           | Your custom options (`opts`) will be merged with the default options.     |
| `dependencies`   | The list of dependencies will be extended with your custom dependencies.  |
| Any other property | Will override the defaults.                                             |
<!-- markdownlint-enable MD013 -->
For ft, event, keys, cmd and opts you can instead also specify a values function
that can make changes to the default values, or return new values to be used instead.

### References

| **Mode**                      | **Identifier** |
|-------------------------------|----------------|
| Normal Mode                   | `n`            |
| Insert Mode                   | `i`            |
| Character-wise Visual Mode    | `v`            |
| Line-wise Visual Mode         | `V`            |
| Block-wise Visual Mode        | `^V` (Ctrl-v)  |
| Replace Mode                  | `R`            |
| Virtual Replace Mode          | `Rv`           |
| Command-Line Mode             | `c`            |
| Terminal Mode                 | `t`            |
| Operator-Pending Mode         | `o`            |
| Select Mode                   | `s`            |
| Ex-Mode                       | `!`            |
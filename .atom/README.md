# ATOM BACKUP

You need only the **.json**, **.cson**, **.coffee** and **.less** files in the *~/.atom* folder, and a list of packages you had installed:

> from command line of the old installation (EXPORT)

```zsh
apm list --installed --bare > packages.list
```

> from command line of the new installation (IMPORT)

```zsh
apm install --packages-file packages.list
```
---

[Source](https://discuss.atom.io/t/how-to-backup-all-your-settings/15674/2) | [Aternative](https://discuss.atom.io/t/installed-packages-list-into-single-file/12227)

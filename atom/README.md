# NOTES ON ATOM BACKUP

You need only the **.json**, **.cson**, **.coffee** and **.less** files in the *~/.atom* folder, and a list of packages you had installed:
run from command line on old install

> apm list --installed --bare > packages.list

then you do from the command line on your new install

> apm install --packages-file packages.list

[Method 1](https://discuss.atom.io/t/how-to-backup-all-your-settings/15674/2)
[Aternatives](https://discuss.atom.io/t/installed-packages-list-into-single-file/12227)

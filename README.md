# Sparrows Dot Files
## Hello there!
Sharing is caring, so here are some dot files I configure to help my workflow and efficiency.  

Also included is a script to help keep your own repository of dot files version controlled. Since the script uses the force option is will override the existing files, allowing for a manual syncing process i.e. rerunning the script after updates. I hope to improve on this in the future. In the mean time I hope these are useful to someone.

## Soft Dependencies
These are just the things that some of the dot files reference.
- npm
- python3
- vim

## The Script
### Adding files
For now the only target directory is $HOME, add your files in `target_home` and run the script from the root directory. `$ ./make-sym-links.sh`
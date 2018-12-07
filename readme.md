# Virtualhost Manage Script

Bash Script to allow create apache/nginx virtual hosts on Ubuntu on a quick way.

This script is a modified version from https://github.com/RoverWire/virtualhost.


## How to: ##


### install

1. Download/ Copy the script
2. Apply permission to execute:

```
$ chmod +x /path/to/virtualhost.sh
```
3. Optional: if you want to use the script globally, then you need to copy the file to your /usr/local/bin directory, is better
if you copy it without the .sh extension:

```bash
$ sudo cp /path/to/virtualhost.sh /usr/local/bin/virtualhost
```

### to create a new virtual host:

```bash
$ sudo virtualhost example.com
```

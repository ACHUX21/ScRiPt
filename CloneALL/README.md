# 🟣 <span style="color:orange;"> GitALL A Tool to Git All Repositories </span>


## Description

This tool allows you to easily retrieve all repositories associated with a GitHub account using a single command.
It simplifies the process of fetching and organizing repositories, making it convenient for managing large collections of projects.

### Features

- Fetches all repositories associated with a GitHub account Using ssh or https
- Provides a single command interface for simplicity

 ## Prerequisites
 
- Curl\Awk\xargs\Git

### Apt package manager
`sudo apt update && sudo apt install curl awk xargs git`

### Dnf package manager
`sudo dnf update && sudo dnf install curl awk findutils git`

### Yum package manager
`sudo yum update && sudo yum install curl awk findutils git`

### Homebrew package manager
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && brew install curl gawk findutils git`

#

## Installation

```bash
sudo curl -s https://raw.githubusercontent.com/ACHUX21/scripts/main/CloneALL/gitall -o /usr/local/bin/gitall && sudo chmod +x /usr/local/bin/gitall
```
### Usage

**__Using HTTPS__**:
```bash
gitall [GH-USERNAME]
```
**__Using SSH__**:
```bash
gitall ssh [GH-USERNAME]
```

## Good BYE

Thank you for taking the time to explore this MiniTool! I hope you found the information and instructions useful. 
If you have any questions or feedback, please feel free to reach out. Goodbye, and happy Bash Scripting!

![image](https://github.com/ACHUX21/scripts/assets/130113878/984ff9c3-94f7-4a24-be2f-92d39bffe6f6)


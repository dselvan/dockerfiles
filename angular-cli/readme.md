# angular-cli
an angular/cli container for a fixed version of the cli and node for local and ci development

# Usage
Download the `ng` bash script from the `scripts/` folder to either your local dev enviroment or your ci server. Add the script to your path. Then use the cli as you normally would.

#### Example 
```bash
curl -o /home/user/bin/ng https://raw.githubusercontent.com/dselvan/dockerfiles/master/angular-cli/scripts/ng
PATH=/home/user/bin:$PATH
ng new project
```

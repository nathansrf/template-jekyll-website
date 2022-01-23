# template-jekyll-website
Template for a Jekyll website that you can host on GitHub Pages.

## TL;DR (vagrant)
```bash
# clone this repo
git clone <url-to-your-website-repo> $HOME/my-website
cd $HOME/my-website/dev-vm
# start vagrant vm
vagrant up
# connect to your vm using the terminal
vagrant ssh
```

## Setting Up your website
Sources for you site are localed on the  `gh-pages/` branch.

Start by editing the information in `_config.yml` to whatever you desire

## Structure
| Folder    | Description                                                                           |
|-----------|---------------------------------------------------------------------------------------|
| dev-vm    | Development VM you can use that is setup with dependencies for quicker development    |
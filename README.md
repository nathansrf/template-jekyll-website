# template-jekyll-website
Template for a Jekyll website that you can host on GitHub Pages.

## Setting Up:
### Create a new repo for your site
1. Select **Use this template** from [template repo](https://github.com/nsrutherford/template-jekyll-website)
    - Alternatively you can fork / clone this repo and modify it for your usecase, but this requires extra knowladge that I will not cover here.
2. Create a new repo from the above template
    - For **Repository name** - `githubusername`.github.io (e.g. nsrutherford.github.io)
    - Select **public** or **private** based on if you want other users to see your website source code
        - This does not impact **SITE** visability, only that of your source code repository
        - Non Github-Pro users are only able to select public (see [Gitlab Pages](https://docs.gitlab.com/ee/user/project/pages/) if you want private source code without paying a fee)
    - Tick **Include all branches** box to ensure `gh-pages` branch is included

### Configure your site (using GitHub Website)
1. Switch from `main` branch to `gh-pages` branch
    - Click dropdown box that says `main` and select `gh-pages`
2. Click on `_config.yml`
3. Click on pencil icon to `Edit this page`
4. Edit the line containing `url` (line 28 at the time of writing)
    - Change `githubusername` to your username e.g. nsrutherford.github.io
5. Scroll to the bottom of the page and click `Commit Changes` (green button)

<!-- ### Configuring your site (using CLI)
1. Clone the website locally
    -   ```git clone git@github.com:githubusername/githubusername.github.io.git``` ~/home/my-website
2. Open the website directory
    - ``` cd ~/my-website ``` -->

### Configure your Github Page settings
1. Select `Settings` tab on repository page
2. Select `Pages` tab in the left verticle panel
3. Under `Source` settings
    - Update `branch` to `gh-pages`
    - Click `Save`

Wait a couple of minutes to let the changes take effect.

Navigate to https://githubusername.github.io/ and test that you site is live

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
# rapid-ubuntu-workstation-provisioner

A collection of installation scripts that automate the setup of a Ubuntu workstation. Structured in a way that allows easy composition, increased code reuse and reduced code duplication.

#### Creating a new installation script

1. Create new bash script at top level

2. Ensure `. config/import_all.sh` is at the start of your script to be able access all installation functions

3. Browse folders and select functions

4. Give executable permissions with `chmod +x example-install.sh`

5. Execute installation `./example-install.sh`

> Use `test.sh` to experiment with as it is in the .gitignore file and won't be saved to source

#### Adding additional folders and/or scripts

>When adding additional folders or installation scrips, don't forget to add to `config/import_all.sh` to make your functions accessible globally

#### Variables

Add variables to ` config/variables.sh ` to make them available globally.


## Clean OS install quick setup

> If dual booting with Windows and no WiFi adapter can be detected in Ubuntu, then check that Windows fast boot is disabled https://askubuntu.com/questions/1083369/ubuntu-18-04-cannot-recognized-intel-wireless-ac-9260

### 1. Install BitWarden (easier to get GitHub password)
`sudo snap install bitwarden`

### 2. Install git and setup globals
```
sudo apt install git -y &&
git config --global user.email "adriangoodyer@gmail.com" &&
git config --global user.name "adegoodyer"
```

### 3. Clone Github repo
```
git clone https://github.com/adegoodyer/workstation-setup.git &&
cd workstation-setup/
```

### 4. Don't forget additional manual setup steps..

https://www.tecmint.com/things-to-do-after-installing-ubuntu-20-04/

- Enable LivePatch
- Launch Chrome and login to sync bookmarks and passwords
- Sign in Snaps store
- Connect to online accounts (Settings > Online Accounts)
    - Ubuntu SSO
    - Google
- Set default applications (Settings > Default Applications)
- Enable additional drivers
- Add favourite apps to dock
    - Chrome
    - BitWarden
##################################################
# doit.sh                                        #
# setting up prerequisites and invoking Ansible. #
##################################################

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install git
brew install git

# make repo directory
mkdir ~/repos

# clone mac_setup repo
git clone https://github.com/johnmouser/mac_setup.git Repos/mac_setup

# install pip
sudo easy_install pip

# install ansible
sudo pip install ansible

# cwd to mac_setup directory
cd ~/repos/mac_setup/

# execute ansible playbook
ansible-playbook site.yml

# reboot
sudo reboot

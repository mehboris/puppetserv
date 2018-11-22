wget https://apt.puppetlabs.com/puppet5-release-xenial.deb
sudo dpkg -i puppet5-release-xenial.deb
sudo apt update
echo export PATH=/opt/puppetlabs/bin:'$PATH' >> ~/.bashrc 
apt-get install puppet-agent
cd /etc/puppetlabs/code/environments/production/
echo git.pp >>  etc/puppetlabs/code/environments/production/manifests/site.pp

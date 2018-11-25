 yum update
 yum install nano
 yum install epel-release
 yum repolist
 systemctl disable firewalld

echo export PATH=/opt/puppetlabs/bin:'$PATH' >> ~/.bashrc 
yum install puppet
cd /etc/puppetlabs/code/environments/ 
mv production production.back
mkdir production
cd /etc/puppetlabs/code/environments/production/
echo git.pp >>  etc/puppetlabs/code/environments/production/manifests/site.pp

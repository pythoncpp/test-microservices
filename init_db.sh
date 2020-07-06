# update the apt cache
sudo apt-get update


# Setting MySQL root user password root/root
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# install mysql
sudo apt-get install -y mysql-server-5.7

# change the bind address
sudo sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
sudo sed -i "s/.*skip-external-locking.*/#skip-external-locking/" /etc/mysql/mysql.conf.d/mysqld.cnf


# restart server
sudo systemctl stop mysql
sudo systemctl start mysql

# create the db schema
mysql -u root -proot < db.sql


Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.define "node1" do |node|
    node.vm.hostname = "db"
     node.vm.network "private_network", ip: "172.16.20.11"
    node.vm.provision "file", source: "db/db.sql", destination: "db.sql"
    node.vm.provision "shell", path: "init_db.sh"
  end

  config.vm.define "node2" do |node|
    node.vm.hostname = "server"
    node.vm.synced_folder "server", "/home/vagrant/server"
    node.vm.network "private_network", ip: "172.16.20.12"
    node.vm.provision "shell", path: "init_server.sh"
  end

  config.vm.define "node3" do |node|
    node.vm.hostname = "frontend"
    node.vm.synced_folder "client", "/var/www/html"
    node.vm.network "public_network", type: 'dhcp'
    node.vm.provision "shell", path: "init_front.sh"
  end

end


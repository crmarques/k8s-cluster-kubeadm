Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.4"

  config.vm.provision "shell", path: "provision-scripts/hosts-dns.sh"
  config.vm.provision "shell", path: "provision-scripts/setup-base.sh"

  config.vm.define "master" do |master|
    master.vm.network "private_network", ip: "192.168.1.100"
    master.vm.hostname = "master"
#    master.vm.provision "shell", path: "provision-scripts/setup-master.sh"
  end

  config.vm.define "node01" do |node01|
    node01.vm.network "private_network", ip: "192.168.1.101"
    node01.vm.hostname = "node01"
#    node01.vm.provision "shell", path: "provision-scripts/setup-node.sh"
  end

  config.vm.define "node02" do |node02|
    node02.vm.network "private_network", ip: "192.168.1.102"
    node02.vm.hostname = "node02"
#    node02.vm.provision "shell", path: "provision-scripts/setup-node.sh"
  end

end

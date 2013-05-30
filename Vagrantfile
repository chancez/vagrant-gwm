Vagrant::Config.run do |config|
  config.vm.host_name = "gwm"
  config.vm.box = "centos-6-20130404"
  config.vm.box_url = "http://packages.osuosl.org/vagrant/centos-6-20130404.box"

  config.vm.forward_port 80, 8080

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      "recipe[yum::default]",
      "recipe[nginx::default]",
      "recipe[python::default]",
      "recipe[ganeti_webmgr::default]",
    ]
  end
end

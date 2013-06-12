Vagrant::Config.run do |config|
  config.vm.host_name = "gwm"
  config.vm.box = "opscode_ubuntu-12.04-chef_solo-11.4.4"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.4.4.box"

  config.vm.forward_port 80, 8000

  config.vm.provision :chef_solo do |chef|
    chef.roles_path = "roles"

    chef.run_list = [
      "recipe[apt]",
      "recipe[python]",
      "role[ganeti_webmgr]"
    ]
  end
end

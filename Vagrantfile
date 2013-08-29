Vagrant.configure("2") do |config|
  config.vm.hostname = "gwm"
  config.vm.box = "nrel-centos6"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130731.box"

  config.vm.network :forwarded_port, guest: 80, host: 8000
  config.vm.synced_folder "~/projects/ganeti_webmgr", "/mnt/ganeti_webmgr"
  config.vm.synced_folder "~/projects/vagrant-gwm/environments", "/vagrant/environments"
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    # chef.log_level = :debug
    chef.roles_path = "roles"
    chef.data_bags_path = "data_bags"

    # chef.environments_path = "environments"
    # chef.environment = "vagrant"
    chef.node_name = 'vagrant"; environment "vagrant"; environment_path "/vagrant/environments'


    chef.json = {
      :mysql => {
        :server_root_password => 'rootpass',
        :server_debian_password => 'debpass',
        :server_repl_password => 'replpassj'
      },
      :ganeti_webmgr => {
        :synced_folder => '/mnt/ganeti_webmgr',
        :overwrite_settings => true
      }
    }

    chef.run_list = [
      "role[ganeti_webmgr_mysql]"
    ]
  end
end

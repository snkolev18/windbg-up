Vagrant.configure("2") do |config|
  config.vm.define :debuggerfake do |debuggerfake|
    debuggerfake.vm.box = "gusztavvargadr/windows-10"
    debuggerfake.vm.network "private_network", ip: "192.168.56.6"
  end

  config.vm.define :debuggeefake do |debuggeefake|
    debuggeefake.vm.box = "gusztavvargadr/windows-10"
    debuggeefake.vm.communicator = "winrm"
    debuggeefake.vm.network "private_network", ip: "192.168.56.7"
    
    # Not sure if dedicated-machine provisioning was possible (will check)
    debuggeefake.vm.provision "shell",
      privileged: true
  end
end

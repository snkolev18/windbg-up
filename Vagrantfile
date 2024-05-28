Vagrant.configure("2") do |config|
  config.vm.define :debugger do |debugger|
    debugger.vm.box = "gusztavvargadr/windows-10"
    debugger.vm.network "private_network", ip: "192.168.56.6"
  end

  config.vm.define :debuggee do |debuggee|
    debuggee.vm.box = "gusztavvargadr/windows-10"
    debuggee.vm.communicator = "winrm"
    debuggee.vm.network "private_network", ip: "192.168.56.7"
    
    # Not sure if dedicated-machine provisioning was possible (will check)
    debuggee.vm.provision "shell",
      privileged: true
  end
end

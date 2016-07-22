# vagrant-client
A feature rich vagrant install with lots of documented configs (MAC OS X)

If you are new to vagrant, read a brief intro -- https://www.vagrantup.com/docs/getting-started/

As per thier description -- Vagrant provides easy to configure, reproducible, and portable work environments built on top of industry-standard technology and controlled by a single consistent workflow to help maximize the productivity and flexibility of you and your team.

To achieve its magic, Vagrant stands on the shoulders of giants. Machines are provisioned on top of VirtualBox, VMware, AWS, or any other provider. Then, industry-standard provisioning tools such as shell scripts, Chef, or Puppet, can be used to automatically install and configure software on the machine.

# My config Files

	Vagrantfile               -- my recommended Vagrantfile - Edit if needed.
	                             has extra RAM and CPUs config'ed
	
	Vagrantfile.multi         -- Multi Machine Cluster file.
	                             A ruby/yaml kludge to have 4 or 5 virtuals
	
	Vagrantfile.orig          -- Original Vagrant File, as created by vagrant init
	                             Has lots of good documentation
	
	v_bootstrap.sh            -- template script 
	                             to provision your vbox 
	
	v_startup.sh              -- template script 
	                             which runs everytime, when one restarts vagrant

# Install Vagrant on your MAC

Install on MAC/or whatever goto https://www.vagrantup.com/downloads.html

also download and install VBOX* - https://www.virtualbox.org/

* Oracles Virtual Box (or VBOX) is the default "provider" AWS and VMware can also be used.

see other boxes available -- Box Archive -- http://www.vagrantbox.es/

My preferences is to create a folder $HOME/vbox.  Then for each new virtual machine; I create a an additional folder inside $HOME/vbox (ie. $HOME/vbox/UBUNTU1404). I **cd** in that new folder. I clone down this REPO, and then **cp** the files I want down. After I have edited the needed file(s), I simply **vagrant up**, as normal [skipping the **vagrant init**].

-dlt

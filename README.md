# vagrant-client
A feature rich vagrant install with lots of documented configs (MAC OS X)

If you are new to vagrant, read a brief intro -- https://www.vagrantup.com/docs/getting-started/

As per thier description -- Vagrant provides easy to configure, reproducible, and portable work environments built on top of industry-standard technology and controlled by a single consistent workflow to help maximize the productivity and flexibility of you and your team.

To achieve its magic, Vagrant stands on the shoulders of giants. Machines are provisioned on top of VirtualBox, VMware, AWS, or any other provider. Then, industry-standard provisioning tools such as shell scripts, Chef, or Puppet, can be used to automatically install and configure software on the machine.

# My config Files

	Vagrantfile               -- my recommended Vagrantfile - Edit if needed.
	                             has extra RAM and CPUs config'ed
	                             * this file can be edited to allow for more CPU & RAM
	
	Vagrantfile.multi         -- Multi Machine Cluster file.
	                             A ruby/yaml kludge to have 4 or 5 virtuals
	
	Vagrantfile.orig          -- Original Vagrant File, as created by vagrant init
	                             Has lots of good documentation
	
	v_bootstrap.sh            -- template script 
	                             to provision your vbox
	                              * this file can be edited to allow for more system packages
	                                like ora java, mysql-server, or any other apt-get package.
	                              * As an added avantage, these files are 100% compatible with
	                              AWS EC2 User-Data Script, just copy-and-paste into dialog box.
	
	v_startup.sh              -- template script 
	                             which runs everytime, when one restarts vagrant
	                              * this file can be edited to allow service startup, etc.
	                              
	mkswap.sh                 -- manaual script to add SWAP to vbox
	
	addNODE.sh                -- manaual script to add NODE.JS to vbox (via NVM method) -- pending!

# Install Vagrant on your MAC

Install on MAC/or whatever goto https://www.vagrantup.com/downloads.html
also download and install VBOX* - https://www.virtualbox.org/

* Oracles Virtual Box (or VBOX) is the default "provider" AWS and VMware can also be used.

see other boxes available -- Box Archive -- http://www.vagrantbox.es/

My preferences is to create a folder $HOME/vbox.  Then for each new virtual machine; I create a an additional folder inside $HOME/vbox (ie. $HOME/vbox/UBUNTU1404). I **cd** in that new folder. I *clone* down this REPO, 

	new-dir $ git clone https://github.com/jorgedlt/vagrant-client.git

and then **cp** the files I want down. After I have edited the needed file(s), I simply **vagrant up**, as normal [skipping the **vagrant init**].

### suggested post install
	cp vagrant-client/v_bootstrap.sh .
	cp vagrant-client/v_startup.sh .
	cp vagrant-client/Vagrantfile .
	cp vagrant-client/mkswap.sh .  ; chmod +x mkswap.sh        # somewhat optional
	v up
	
	then ... v ssh     # login into new vbox

** NOTE v is an 'alias v='vagrant'

One should review and possibly edit [ vagrant-client/v_bootstrap.sh & vagrant-client/v_startup.sh ] to reduce provisioning  needs, or to add other features outside of this scope. The [ vagrant-client/Vagrantfile ] should be OK for most other users, but again its on you to review and decide. 

Once the vagrant is up and running, from inside of the vbox iteslf, even more personalisation is possible. I would consider these optional, but I place them here for my refernce and conviniance.

	# get from REPO - bashrc-vbox file
	  wget https://storage.googleapis.com/jorgedlt-config-repo/bashrc-vbox
	  mv bashrc-vbox .bashrc && source .bashrc

	# get from REPO - vimrc file
	  wget https://storage.googleapis.com/jorgedlt-config-repo/vimrc
	  mv vimrc .vimrc

-- dlt

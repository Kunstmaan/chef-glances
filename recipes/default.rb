include_recipe "apt"

apt_repository "glances" do
  action :add
  uri "http://ppa.launchpad.net/arnaud-hartmann/glances-stable/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "81240C6D"
  notifies :run, "execute[apt-get update]", :immediately
end

package "glances" do
  action :upgrade
end

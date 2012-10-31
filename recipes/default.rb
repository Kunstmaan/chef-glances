package "python-pip build-essential python-dev" do
  action :upgrade
end

execute 'pip install Glances'
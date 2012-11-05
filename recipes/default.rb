%w{python-pip build-essential python-dev}.each do |pkg|
    package pkg do
      action :upgrade
    end
end
execute 'pip install Glances'
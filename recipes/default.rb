# Iterate and install packages
node[:package_installer][:packages].each do |pkg_name, pkg_info|
  if(pkg_info)
    pkg_action = pkg_info[:action] || :install
    pkg_version = pkg_info[:version]
    pkg_source = pkg_info[:source]
  end
  package pkg_name do
    action pkg_action
    version pkg_version if pkg_version
    source pkg_source if pkg_source
  end
end

include_recipe "lumenvox::core"

package "LumenVoxClient"

template "/etc/lumenvox/client_property.conf" do
  source "client_property.conf.erb"
  variables(
    :license_servers => node['lumenvox']['client']['license_servers'],
    :sre_servers => node['lumenvox']['client']['sre_servers'],
    :tts_servers => node['lumenvox']['client']['tts_servers']
  )
end

require 'thor'
require 'thor/group'

case ARGV.first
when 'version', '-v', '--version'
  puts Gem.loaded_specs['spree_extension'].version
when 'create'
  ARGV.shift
  require 'spree_extension/extension'
  SpreeExtension::Extension.start
end

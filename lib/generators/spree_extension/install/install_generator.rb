require 'rails/generators'

module SpreeExtension
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)

      desc 'Installs Spree Extension CLI binstub into your application'

      def create_binstub
        template 'bin/spree-extension', 'bin/spree-extension'
        chmod 'bin/spree-extension', 0o755
      end

      def show_post_install_message
        say_status :installed, 'bin/spree-extension'
        say ''
        say 'You can now run Spree Extension commands using:'
        say '  bin/spree-extension version'
        say '  bin/spree-extension create my_extension'
        say ''
      end
    end
  end
end

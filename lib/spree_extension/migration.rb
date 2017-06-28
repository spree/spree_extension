module SpreeExtension
  module Migration
    def self.[](version)
      # Rails 5.1 requires to use versioned migrations
      # but < 5.0 doesn't support them
      if Rails.gem_version >= Gem::Version.new('5.x')
        ActiveRecord::Migration[version]
      else
        ActiveRecord::Migration
      end
    end
  end
end

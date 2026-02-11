# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "spree_extension"
  s.version     = "1.0.0"
  s.authors     = ['Spark Solutions Sp. z o.o.', 'Vendo Connect Inc.']
  s.email       = ['hello@spreecommerce.org']
  s.summary     = 'Spree Extension Generator'
  s.description = 'CLI tool to generate and manage Spree Commerce extensions'
  s.homepage    = 'https://spreecommerce.org'
  s.license     = 'MIT'

  s.metadata = {
    "bug_tracker_uri"   => "https://github.com/spree/spree_extension/issues",
    "documentation_uri" => "https://docs.spreecommerce.org/",
    "source_code_uri"   => "https://github.com/spree/spree_extension",
  }

  s.required_ruby_version = '>= 3.2'

  s.files         = Dir.glob(["{bin,lib}/**/*", "LICENSE.md", "Rakefile", "README.md"], File::FNM_DOTMATCH)
  s.bindir        = 'bin'
  s.executables   = ['spree-extension']
  s.require_paths = ['lib']

  s.add_dependency 'thor', '~> 1.0'
end

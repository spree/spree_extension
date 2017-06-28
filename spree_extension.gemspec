Gem::Specification.new do |s|
  s.name        = 'spree_extension'
  s.version     = '0.0.5'
  s.summary     = 'Common tools and helpers for Spree Extensions developers'
  s.description = 'Common tools and helpers for Spree Extensions developers'
  s.authors     = ['Damian Legawiec']
  s.email       = 'damian@sparksolutions.co'
  s.homepage    = 'https://spreecommerce.org'
  s.license     = 'BSD-3'

  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.require_paths = ['lib']

  s.add_dependency 'activerecord', '>= 4.2'
end

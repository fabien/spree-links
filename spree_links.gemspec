Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_links'
  s.version     = '3.0.3'
  s.summary     = 'Adds an easy links page to your spree site'
  s.description = 'With this gem you get a links page and the management tools to make it very easy to update your links'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Fabien Franzen'
  s.email             = 'fabienf@gmail.com'
  s.homepage          = 'http://spreecommerce.com'
  s.rubyforge_project = 'spree_links'

  s.files        = Dir['README.md', 'lib/**/*', 'app/**/*', 'config/*', 'db/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core',  '>= 0.70.1')
end


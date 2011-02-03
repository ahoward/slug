## slug.gemspec
#

Gem::Specification::new do |spec|
  spec.name = "slug"
  spec.version = "0.0.1"
  spec.platform = Gem::Platform::RUBY
  spec.summary = "slug"
  spec.description = "description: slug kicks the ass"

  spec.files = ["lib", "lib/slug.rb", "Rakefile", "README", "slug.gemspec"]
  spec.executables = []
  
  spec.require_path = "lib"

  spec.has_rdoc = true
  spec.test_files = nil

# spec.add_dependency 'lib', '>= version'
  spec.add_dependency 'unidecoder'

  spec.extensions.push(*[])

  spec.rubyforge_project = "codeforpeople"
  spec.author = "Ara T. Howard"
  spec.email = "ara.t.howard@gmail.com"
  spec.homepage = "http://github.com/ahoward/slug"
end

require_relative "lib/demo_engine/version"

Gem::Specification.new do |spec|
  spec.name        = "demo_engine"
  spec.version     = DemoEngine::VERSION
  spec.authors     = [ "LockeZz" ]
  spec.email       = [ "LockeZz.PHF@gmail.com" ]
  spec.homepage    = "https://github.com/LockeZz-PHF/demo_engine"
  spec.summary     = "DemoEngine TEST"
  spec.description = "DemoEngine."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://github.com/LockeZz-PHF/demo_engine"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/LockeZz-PHF/demo_engine"
  spec.metadata["changelog_uri"] = "https://github.com/LockeZz-PHF/demo_engine"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.2"
end

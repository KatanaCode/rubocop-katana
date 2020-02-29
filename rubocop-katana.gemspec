
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubocop/katana/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-katana"
  spec.version       = Rubocop::Katana::VERSION
  spec.authors       = ["Bodacious"]
  spec.email         = ["bodacious@katanacode.com"]

  spec.summary       = %q{Rubocop style checks for Katana projects.}
  spec.description   = %q{Katana's internal Rubocop style guide checks}
  spec.homepage      = "https://github.com/katanacode/rubocop-katana"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir["README.md", "LICENSE", "config/*.yml", "lib/**/*"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "config"]

  spec.add_runtime_dependency "rubocop", ">= 0.54"
  spec.add_runtime_dependency "rubocop-rails", ">= 2.4.0"
  spec.add_runtime_dependency "rubocop-rspec", ">= 1.25"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
end

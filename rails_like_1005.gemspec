
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_like_1005/version"

Gem::Specification.new do |spec|
  spec.name          = "rails_like_1005"
  spec.version       = RailsLike1005::VERSION
  spec.authors       = ["Peck"]
  spec.email         = ["xiaoyang20170204@gmail.com"]

  spec.summary       = %q{a rails like fromework for practice}
  spec.description   = %q{a rails like fromework for practice,it is not identical with summary}
  spec.homepage      = "https://github.com/PeckLiu2017/rails_like_1005.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end
  # git add and commit everytime you change your gem
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'test-unit', '~> 3.2', '>= 3.2.7'
  spec.add_development_dependency "rack-test", "~> 0.7.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency 'rest-client', '~> 2.0', '>= 2.0.2'
  spec.add_development_dependency "pry", "~> 0.11.1"
  spec.add_dependency "bundler",         '~> 1.3', '>= 1.3.0'
end

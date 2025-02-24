# frozen_string_literal: true

require_relative "lib/toy2/version"

Gem::Specification.new do |spec|
  spec.name = "toy2"
  spec.version = Toy2::VERSION
  spec.authors = ["Matt Rogers"]
  spec.email = ["codemattr@gmail.com"]

  spec.summary = %q{A useless toy gem to test other functionality}
  spec.description = %q{This is my super long description for this toy gem that I'm making to test a thing.}
  spec.homepage = "https://github.com/mattr-/toy-gems"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.3.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/mattr-"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mattr-/toy-gems"
  spec.metadata["changelog_uri"] = "https://github.com/mattr-/toy-gems/gems/toy2/CHANGELOG.md"
  spec.metadata["github_repo"] = "https://github.com/mattr-/toy-gems"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

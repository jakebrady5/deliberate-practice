# frozen_string_literal: true
source "https://rubygems.org"

gem "sorbet", "~> 0.5.11681"
gem "tapioca", "~> 0.16.5"

# we specify two paths for octo_tools which confuses bundler. As this gemfile is used
# only for generating sorbet annotations, we can skip one of the references to make
# bundler happy by setting this environment variable.
SORBET_ANNOTATIONS_MODE = true

eval_gemfile "gems/toy1/Gemfile"
eval_gemfile "gems/toy2/Gemfile"

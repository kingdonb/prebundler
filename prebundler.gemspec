$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'prebundler/version'

Gem::Specification.new do |s|
  s.name     = 'prebundler'
  s.version  = ::Prebundler::VERSION
  s.authors  = ['Cameron Dutro']
  s.email    = ['camertron@gmail.com']
  s.homepage = 'http://github.com/camertron'

  s.description = s.summary = 'Gem dependency prebuilder'
  s.platform = Gem::Platform::RUBY

  s.add_dependency 'bundler'
  s.add_dependency 'parallel', '~> 1.0'
  s.add_dependency 'gli', '~> 2.0'
  s.add_dependency 'ohey', '~> 1.0'

  # @TODO: move s3 support into separate gem
  s.add_dependency 'aws-sdk', '~> 2.0'

  # with rails >6 or ruby >3.0.0 webrick is no longer baked in
  s.add_dependency 'webrick', '~> 1.7'

  s.executables << 'prebundle'

  s.require_path = 'lib'
  s.files = Dir['{lib,spec}/**/*', 'Gemfile', 'CHANGELOG.md', 'README.md', 'Rakefile', 'prebundler.gemspec']
end

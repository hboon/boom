# -*- encoding: utf-8 -*-
require File.expand_path('../lib/boom/version.rb', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'desktop-boom'
  gem.authors  = ['Hwee-Boon Yar']
  gem.email = 'hboon@motionobj.com'
  gem.version       = DesktopBoom::VERSION

  gem.licenses      = ['BSD']
  gem.summary = 'boom - maintain your OS X desktop. Use boom so that your desktop only contains files and folders for the current project you are working on.'
  gem.description = gem.summary
  gem.homepage = 'http://hboon.com/boom/'

	gem.add_dependency 'commander', '~> 4.3'
  gem.files       = `git ls-files`.split($\)
  gem.executables   = ['boom']
  gem.require_paths = ['lib']
  #gem.test_files  = gem.files.grep(%r{^spec/})
end

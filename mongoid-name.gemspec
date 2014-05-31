Gem::Specification.new do |s|
  s.name = 'mongoid-name'
  s.version = '0.0.0'
  s.license = 'MIT'
  s.summary = 'Mongoid Name Type'
  s.author = 'aj0strow'
  s.email = 'alexander.ostrow@gmail.com'
  s.homepage = 'https://github.com/aj0strow/mongoid-name'
  s.files = `git ls-files`.split($/)
  s.test_files = s.files.grep(/test/)
  s.require_path = 'lib'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'mongoid', '~> 4.0.0.beta2'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'database_cleaner'
end

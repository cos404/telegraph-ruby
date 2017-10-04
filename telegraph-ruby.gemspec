lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.add_dependency 'httparty', '~> 0.14.0'

  spec.name          = 'telegraph-ruby'
  spec.version       = '0.1.3'
  spec.authors       = ['Maxim Hvaschinsky']
  spec.email         = ['22division7@gmail.com']
  spec.date          = '2017-10-04'
  spec.summary       = "A Ruby interface to Telegra.ph API"
  spec.homepage      = 'https://github.com/cos404/telegraph-ruby'
  spec.files         = `git ls-files`.split($/)
  spec.license       = 'MIT'
end
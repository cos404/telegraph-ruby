lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'telegraph-ruby'
  spec.version       = '0.1.0'
  spec.authors       = ['Maxim Hvaschinsky']
  spec.email         = ['22division7@gmail.com']
  spec.date          = '2017-09-27'
  spec.summary       = "A Ruby interface to Telegra.ph API"
  spec.homepage      = 'https://github.com/cos404/telegraph-ruby'
  spec.files         = `git ls-files`.split($/)
  spec.license       = 'MIT'
end
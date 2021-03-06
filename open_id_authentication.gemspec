$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
require 'open_id_authentication/version'
Gem::Specification.new do |s|
    s.name        = %q{gitorious_openid_auth}
    s.version     = OpenIdAuthentication::VERSION
    s.summary     = %q{open_id_authentication provides a thin wrapper around the excellent rack-openid
                      gem.}
    s.description = %q{open_id_authentication provides a thin wrapper around the excellent rack-openid
                      gem.}

    s.files        = Dir['[A-Z]*', 'lib/**/*.rb']
    s.require_path = 'lib'

    s.authors = ["Christian Johansen", "Patrick Robertson"]
    s.email   = ["christian@gitorious.com", "patrick.robertson@velir.com"]
    s.homepage = "https://gitorious.org/gitorious/openid_auth"

    s.platform = Gem::Platform::RUBY
    s.rubygems_version = %q{1.2.0}

    if s.respond_to? :specification_version then
      s.specification_version = 3

      if Gem::Version.new(Gem::VERSION) >= Gem::Version.new("1.2.0") then
        s.add_runtime_dependency(%q<rack-openid>, ["~> 1.3"])
      else
        s.add_dependency(%q<rack-openid>, ["~> 1.3"])
      end
    else
      s.add_dependency(%q<rack-openid>, ["~> 1.3"])
    end
end

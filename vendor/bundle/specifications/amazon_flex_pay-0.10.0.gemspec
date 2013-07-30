# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "amazon_flex_pay"
  s.version = "0.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Lance Ivy"]
  s.date = "2013-02-11"
  s.description = "A straight-forward REST API for Amazon's Flexible Payments Services."
  s.email = "lance@kickstarter.com"
  s.homepage = "http://github.com/kickstarter/amazon_flex_pay"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "API layer for Amazon FPS"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rest-client>, ["~> 1.6.1"])
      s.add_runtime_dependency(%q<multi_xml>, [">= 0.5.2"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.14"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<rest-client>, ["~> 1.6.1"])
      s.add_dependency(%q<multi_xml>, [">= 0.5.2"])
      s.add_dependency(%q<activesupport>, [">= 3.0.14"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<rest-client>, ["~> 1.6.1"])
    s.add_dependency(%q<multi_xml>, [">= 0.5.2"])
    s.add_dependency(%q<activesupport>, [">= 3.0.14"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end

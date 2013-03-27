# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dawanda_client}
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["DaWanda GmbH"]
  s.date = %q{2010-05-31}
  s.description = %q{Provides a friendly ruby-like interface to the Dawanda API}
  s.email = %q{api@dawanda.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "dawanda_client.gemspec",
     "lib/dawanda.rb",
     "lib/dawanda/category.rb",
     "lib/dawanda/channel.rb",
     "lib/dawanda/color.rb",
     "lib/dawanda/model.rb",
     "lib/dawanda/oauth.rb",
     "lib/dawanda/pinboard.rb",
     "lib/dawanda/product.rb",
     "lib/dawanda/request.rb",
     "lib/dawanda/response.rb",
     "lib/dawanda/shop.rb",
     "lib/dawanda/shop_category.rb",
     "lib/dawanda/user.rb",
     "test/fixtures/getCategoryDetails.json",
     "test/fixtures/getProductDetails.json",
     "test/fixtures/getShopDetails.json",
     "test/fixtures/getUserDetails.json",
     "test/test_helper.rb",
     "test/unit/dawanda/category_test.rb",
     "test/unit/dawanda/color_test.rb",
     "test/unit/dawanda/product_test.rb",
     "test/unit/dawanda/shop_category_test.rb",
     "test/unit/dawanda/shop_test.rb",
     "test/unit/dawanda/user_test.rb",
     "test/unit/dawanda_test.rb"
  ]
  s.homepage = %q{http://github.com/dawanda/dawanda-api-client-ruby}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Provides a friendly ruby-like interface to the Dawanda API}
  s.test_files = [
    "test/test_helper.rb",
     "test/unit/dawanda/category_test.rb",
     "test/unit/dawanda/color_test.rb",
     "test/unit/dawanda/product_test.rb",
     "test/unit/dawanda/shop_category_test.rb",
     "test/unit/dawanda/shop_test.rb",
     "test/unit/dawanda/user_test.rb",
     "test/unit/dawanda_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<oauth>, ["= 0.4.0"])
    else
      s.add_dependency(%q<oauth>, ["= 0.4.0"])
    end
  else
    s.add_dependency(%q<oauth>, ["= 0.4.0"])
  end
end

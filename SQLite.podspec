require "json"

Pod::Spec.new do |s|
  # NPM package specification
  package = JSON.parse(File.read(File.join(File.dirname(__FILE__), "package.json")))

  s.name         = "SQLite"
  s.version      = package["version"]
  s.summary      = "1"
  s.homepage     = "https://github.com/ScoutIQ/react-native-sqlite-storage"
  s.license      = "MIT"
  s.author       = { package["author"]["name"] => package["author"]["email"] }
  s.platforms    = { :ios => "9.0", :tvos => "9.0" }
  s.source       = { :git => "https://github.com/ScoutIQ/react-native-sqlite-storage", :tag => "#{s.version}" }
  s.source_files = "src/ios/**/*.{h,m}", "src/common/**/*.{c,h}"

  s.dependency "React"

end

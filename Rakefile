DESTINATIONS = ["name=iPhone Retina (3.5-inch),OS=7.0",
                "name=iPhone Retina (4-inch),OS=7.0",
                "name=iPhone Retina (4-inch 64-bit),OS=7.0"]

desc 'Clean and Build'
task :default => [:clean, :test]


desc 'Clean'
task :clean do
  sh "xctool clean -workspace RACSample.xcworkspace -scheme RACSample"
end

desc 'Build'
task :build do
  sh "xctool -workspace RACSample.xcworkspace -scheme RACSample -sdk iphonesimulator"
end

desc 'Test'
task :test do
  sh "xctool -workspace RACSample.xcworkspace -scheme RACSample -sdk iphonesimulator build test"
end

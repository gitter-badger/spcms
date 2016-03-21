def require_directory(name)
  Dir[File.expand_path("../#{name}/**/*.rb", __FILE__)].each do |file|
    require file
  end
end

require_directory 'models'

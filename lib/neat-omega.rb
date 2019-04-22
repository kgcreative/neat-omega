require "sass"

module NeatOmega
  if defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      config.assets.paths << File.expand_path("../core", __dir__)
    end
  else
    Sass.load_paths << File.expand_path("../core", __dir__)
  end
end

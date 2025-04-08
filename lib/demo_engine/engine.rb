module DemoEngine
  class Engine < ::Rails::Engine
    isolate_namespace DemoEngine

    # Load generators
    generators do 
      require_relative "../generators/demo_engine/views_generator"
    end

  end
end

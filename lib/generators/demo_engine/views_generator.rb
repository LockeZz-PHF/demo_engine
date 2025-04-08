require 'rails/generators/base'

module DemoEngine
    module Generators 

        class ViewsGenerator < Rails::Generators::Base
            desc "Copy DemoEngine Views to host application"

            def copy_views
                directory "app/views", "app/views/demo_engine"
            end

        end
    end
end
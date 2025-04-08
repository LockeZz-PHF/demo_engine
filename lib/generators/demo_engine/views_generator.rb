require 'rails/generators/base'

module DemoEngine
  module Generators 

    class ViewsGenerator < Rails::Generators::Base
      extend ActiveSupport::Concern
      source_root File.expand_path("../../../../app/views", __FILE__)
      desc "Copy DemoEngine Views to host application"
      hide!

      def copy_views
        view_directory :demo_engine
      end
    end

  end
end
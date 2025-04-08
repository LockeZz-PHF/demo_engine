require 'rails/generators/base'

module DemoEngine
  module Generators 

    module ViewPathTemplates
      extend ActiveSupport::Concern

      included do 
        argument :scope, required: false, default: nil,
                          desc: "The scope to copy views to"

        class_option :views, aliases: "-v", type: :array, desc: "Select specific view directories to generate (for this demo we only have one) => demo_engine"

        public_task :copy_views
      end

      def copy_views
        if options[:views]
          optiosn[:views].each do |directory|
            view_directory directory.to_sym
          end
        else 
          view_directory :posts
        end
      end

      protected

      def view_directory(name, _target_path=nil)
        directory name.to_s, _target_path || "#{target_path}/#{name}" do |content|
          ## Future reference for scope case
          # if scope 
          #   content.gsub("demo_engine/shared", "#{plural_scope}/shared")
          # else
          #   content
          # end
          content
        end
      end

      def target_path
        @target_path ||= "app/views/#{plural_scope || :demo_engine}"
      end

      def plural_scope
        @plural_scope ||= scope.presence && scope.underscore.pluralize
      end

    end

    class ViewsGenerator < Rails::Generators::Base
      include ViewPathTemplates
      source_root File.expand_path("../../../../app/views/demo_engine", __FILE__)
      desc "Copy DemoEngine Views to host application"
      hide!

      # def copy_views
      #   view_directory :posts
      # end
    end

  end
end
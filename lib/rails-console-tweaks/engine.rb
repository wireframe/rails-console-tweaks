require 'hirb'

module Rails
  module ConsoleTweaks
    class Engine < Rails::Engine
      initializer "rails-console-tweaks.initializer" do |app|
        if defined? ::Rails::Console
          # log sql statements to stdout
          ActiveRecord::Base.logger = Logger.new(STDOUT)

          # pretty print output of models
          ::Hirb.enable
        end
      end
    end
  end
end

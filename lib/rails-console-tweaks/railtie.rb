module Rails
  module ConsoleTweaks
    class Railtie < Rails::Railtie
      console do
        # load gems specifically for the conosle
        Bundler.require(:console)

        # log sql statements to stdout
        ActiveRecord::Base.logger = Logger.new(STDOUT)

        # pretty print output of models
        ::Hirb.enable if defined?(::Hirb)

        # colorize output
        ::Wirb.start if defined?(::Wirb)
      end
    end
  end
end

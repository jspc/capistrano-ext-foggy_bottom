require 'capistrano'
require_relative 'foggy_bottom/vagrant'

module Capistrano
  module Foggy_Bottom

    def self.load_into conf
      conf.load do
        namespace :foggy_bottom do
          desc 'Build out a new node'
          task :spin_up do
            if fetch(:vagrant, false)
              spin_up_vagrant
            end
          end
          
          desc 'Kill a node'
          task :destroy do
            if fetch(:vagrant, false)
              destroy_vagrant
            end
          end

        end
      end
    end

  end
end


if Capistrano::Configuration.instance
  Capistrano::Foggy_Bottom.load_into(Capistrano::Configuration.instance)
end

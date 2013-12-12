require 'capistrano'

module Capistrano
  module Foggy_Bottom
    module Vagrant
      def self.load_into conf
        conf.load do
          namespace :foggy_bottom do
            desc 'Spin up Vagrant box'
            task :spin_up_vagrant do
              vagrantfile  = fetch(:vagrantfile, 'config/deploy/Vagrantfile')
              run_locally "cd #{File.dirname vagrantfile} && vagrant up"
            end

            desc 'Destroy Vagrant box'
            task :destroy_vagrant do
              vagrantfile  = fetch(:vagrantfile, 'config/deploy/Vagrantfile')
              run_locally "cd  #{File.dirname vagrantfile} && vagrant destroy -f"
            end
          end
        end

      end
    end
  end
end

if Capistrano::Configuration.instance
  Capistrano::Foggy_Bottom::Vagrant.load_into(Capistrano::Configuration.instance)
end

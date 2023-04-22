require 'fileutils'

module Cd
  VERSION = '1.0.1'.freeze

  extend self

  def cd(path = nil)
    if !path
      Cd::Proxy
    else
      Cd::Proxy[path]
    end 
  end 

  module Proxy
    def self.~
      cd '~'
    end

    def self.-@
      if @last_path
        cd @last_path
      else
        warn "Sorry, there is no previous directory."
      end
    end

    def self.[](path)
      next_last_path = pwd
      FileUtils::Verbose.cd File.expand_path(path)
      @last_path = next_last_path
      Cd::Proxy.ls
    end

    def self.ls(path = '.')
      Dir["#{path}/*"].map{ |filename| File.basename filename }
    end

    def self.pwd
      FileUtils.pwd
    end

    def self.inspect
      "#{to_s}[#{pwd.inspect}]"
    end
  end
end



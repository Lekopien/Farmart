require_relative "../lib/cd"
require "minitest/autorun"

require 'fileutils'

describe Cd do
  include Cd

  it "changes the directory" do
    FileUtils.cd "/"
    old_directory = FileUtils.pwd
    cd "~"
    new_directory = FileUtils.pwd
    assert new_directory != old_directory
  end
end


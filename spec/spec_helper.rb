ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require 'minitest/autorun'
 
Turn.config do |t|
  t.format = :outline
  t.natural = true
end

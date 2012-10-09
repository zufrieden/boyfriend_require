# -- coding: utf-8

require "rubygems"
require "bundler/setup"
Bundler.require :test

module Scoreboard
  @score = 0

  def self.incr
    @score += 1
  end

  def self.score
    @score
  end

  def self.engineer?
    @engineer
  end

  def self.engineer=(bool)
    @engineer = bool
  end
end

RSpec.configure do |conf|

  def prompt(msg, required = false)
    it msg do
      puts "#{msg.gsub(/[?？]$/, "")}? (Y/n)"
      answer = ["Y",""].include? gets.strip.upcase
      answer.should be_true if required
      Scoreboard.incr if answer
    end
  end

end

# -- coding: utf-8

require "rubygems"
require "bundler/setup"
Bundler.require :test

module You
  @score = 0

  def self.incr
    @score += 1
  end

  def self.score
    @score
  end

  def self.engineer?
    @engineer ||= prompt("エンジニア or プログラマ")
  end
end

RSpec.configure do |conf|

  def question(msg, required = false)
    it msg do
      answer = prompt(msg)
      answer.should be_true if required
      You.incr if answer
    end
  end

  def prompt(msg, required = false)
    puts "#{msg.gsub(/[?？]$/, "")}? (Y/n)"
    ["Y",""].include? gets.strip.upcase
  end

end

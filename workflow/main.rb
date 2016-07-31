#!/usr/bin/env ruby
# encoding: utf-8

require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
require_relative "bundle/bundler/setup"
require "alfred"

Alfred.with_friendly_error do |alfred|
  fb = alfred.feedback

  fb.add_item({
    :title => "User ID: #{ARGV[0]}" ,
    :arg   => ARGV[0]               , # This is the value that is passed to the next portion
  })

  puts fb.to_xml(ARGV)
end
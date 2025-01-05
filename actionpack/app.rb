#!/usr/bin/env ruby

require 'rackup'
require 'action_dispatch'
require 'webrick'

class MyApp
  def initialize
    @routes = ActionDispatch::Routing::RouteSet.new

    draw_routes
  end

  def call(env)
    @routes.call(env)
  end

  private

  def draw_routes
    @routes.draw do
      get '/hello', to: ->(env) { [200, { "Content-Type" => "text/plain" }, ["Hello, World!"]] }
      get '/goodbye', to: ->(env) { [200, { "Content-Type" => "text/plain" }, ["Goodbye, World!"]] }
    end
  end
end

if File.expand_path(__FILE__) == File.expand_path($PROGRAM_NAME)
  Rackup::Handler::WEBrick.run MyApp.new, Port: 3000
end

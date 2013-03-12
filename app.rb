require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'
require 'date'
Dir["lib/**/*.rb"].each {|f| require "./#{f}"}

#
# Configuration
#

# Allow rendering of partials. See: https://gist.github.com/119874
helpers Sinatra::Partials

helpers ApplicationHelper

configure do
  # Default Haml format is :xhtml
  set :haml, { :format => :html5 }
end

configure :development do
  require "sinatra/reloader"
end

configure :production do
  set :haml, { :ugly => true }
end


#
# Helpers
#
helpers do
  include Rack::Utils
  alias_method :h, :escape_html
end


#
# Routes
#

not_found do
  redirect '/404.html'
end

get '/stylesheets/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :"stylesheets/#{params[:name]}"
end

get "/" do
  haml :index
end

def views_in(directory)
  Dir.glob(File.join(File.dirname(__FILE__), 'views', directory, '*.haml')).map{|file| File.basename(file, '.haml')}
end

get /\/treatments\/(#{views_in('treatments').join('|')})/ do |treatment|
  haml :"treatments/#{treatment}"
end

get /\/products\/(#{views_in('products').join('|')})/ do |product|
  haml :"products/#{product}"
end

get /\/(#{views_in('').join('|')})/ do |page|
  haml page.to_sym
end

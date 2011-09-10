require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'
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

get "/treatments/ipl-permanent-hair-reduction" do
  haml :'treatments/ipl-permanent-hair-reduction'
end

get "/treatments/dermaroller" do
  haml :'treatments/dermaroller'
end

get "/treatments/wrinkle-relaxing-injections" do
  haml :'treatments/wrinkle-relaxing-injections'
end

get "/treatments/dermal-fillers" do
  haml :'treatments/dermal-fillers'
end

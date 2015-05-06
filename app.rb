require 'sinatra'

set :bind, '0.0.0.0'
set :port,8080
get '/' do
  "Hello hi My name is Cloud Computing I am in spring 2015!\n"+
# ENV values are generated during template processing
# and then passed to the container when openshift launches it.
  "User is #{ENV['ADMIN_USERNAME']}\n"+
  "Password is #{ENV['ADMIN_PASSWORD']}\n"+
  "DB password is #{ENV['DB_PASSWORD']}\n"
end

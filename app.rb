#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
  erb :about
end

get '/visit' do
	erb :visit
end

get '/contacts' do
		erb :contacts
end

post '/contacts' do
	@email = params[:email]
	@textarea = params[:textarea]
	@title = "We've got your message"
	
	f = File.open './public/contacts.txt', 'a'
	f.write "textarea: #{@textarea}, email: #{@email}"
	f.close

	erb :message2
end

post '/visit' do
	
	@user_name = params[:user_name]
	@phone = params[:phone]
	@time = params[:time]
	@barber = params[:barber]
	@color = params[:color]

	@title = "Thank you."
	@message = "#{@user_name}, we'll be waiting for you at #{@time}. Your barber is #{@barber}. #{@color}"
	f = File.open './public/users.txt', 'a'
	f.write "User's name #{@user_name}, phonenumber #{@phone}, time #{@time}."
	f.close
	erb :message

end

class User
 attr_accessor :username, :name, :friends
   @@number_of_users = 0
   @@usernames=[]
   @@all_usernames={}
 

#username and password are instances
 
 def initialize(name)
  # @username = username
   @name = name
   @@number_of_users += 1
   @@number_of_users
   @@usernames
   @@number_of_users
 end
 
 
 def log_in
   puts "Enter your username"
   # all_usernames = {}
   sign_in_username= gets.chomp
   
 if @@all_usernames.include?(sign_in_username)  
   puts "Please enter password."
 else
   puts "Create an account"
 end
   
   # @@usernames.each do |user|
   #   if all_usernames[username]
   #     puts "Please enter password."
   #   else
   #     puts "Create account"
   #   end
 end  
 
 def create_account
   puts "Enter your desired username"
   sign_up_username= gets.chomp
   puts "Enter your desired password"
   sign_up_password= gets.chomp
   all_usernames[sign_up_username]=sign_up_password
 end

 def opening_greeting
   puts "Connect with friends and the world around you on Facebook."
   sleep(1)
   puts "If you have an account, enter sign in!"
   sleep(1)
   puts "If you would like to create an account, enter sign up. It’s free and always will be."
   sign_in_sign_up = gets.chomp.downcase
 
     if sign_in_sign_up == "sign in"
       log_in
     elsif sign_in_sign_up == "sign up"
       create_account
     else
       opening_greeting
     end
 end
 
 def counting_users
   if "How many people are on Facebook?"
     puts number_of_users
   end
 end
 
end

user_one = User.new("billy")
user_one.log_in

require_relative './config/environment.rb'

class Redbox
  def run
    User.new(name: 'Tom')
    login
  end

  # Login

  def login
    prompt = TTY::Prompt.new
    user = nil
      username = prompt.ask('what is your name?')
      if username == 'exit'
        exit
      else
        user = User.find { |user| user.name = username }
      end
      puts "Welcome #{username}"
      main_menu(user)
    end
   
  

  # menu

  def main_menu(user)
    prompt = TTY::Prompt.new
    menu = ['Checkout Movie', 'List Checkouts', 'List Movies',
            'Return Movie', 'Logout']
    choice = nil
    unless choice == 'Logout'
      choice = prompt.select('What would you like to do?', menu)
      case choice
      when 'Checkout Movie'
        checkout_movie
      when 'List my Checkouts'
        list_my_checkouts
      when 'List Movies'
        list_movies
      when 'Return Movie'
        return_movie
      end
    end
  end


 
  def list_my_checkouts 
  
  end

  def list_movies
    # Movie.all
    Movie.all
  end

#still working on checkout methods
  # def checkout_movie(user, movie, date)
  #   checkout = Checkout.create(user: user, movie: movie, due_date: date)
  #   checkout.return_status = false
  # end

  # def return_movie(movie)
  #   checkout = Checkout.all.find { |checkout| checkout.movie == movie }
  #   checkout.return_status = true
  # end

 
end

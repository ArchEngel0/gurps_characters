class PagesController < ApplicationController
  def index
    @character = Character.all
    puts @characters.inspect
  end
  def about
    # Add any instance variables or logic you need for your About page here
  end
end
class PagesController < ApplicationController
  
  def home
    redirect_to articles_path if logged_in?
  end

  def about
  end

  def about_new
  end

  def back_end
  end

  def front_end
  end

end

class SiteController < ApplicationController
  def home
    if user_signed_in?
      redirect_to user_path(current_user)
    end
  end

  def help
  end

  def features
  end

  def blog
  end

  def signin
  end

  def about
  end

  def contact
  end
end

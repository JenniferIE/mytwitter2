class StaticPagesController < ApplicationController
  def home
  	if logged_in?
  	  @comment = current_user.comments.build if signed_in?
  	  @feed_items = current_user.feed
  	end
  end

  def help
  end
  
  def about
      flash[:notice] = "Testing the flash"
  end
end

class NewController < ApplicationController
  def cousine
  @news=New.new(params[:new])
 @news.save
  end
 
end

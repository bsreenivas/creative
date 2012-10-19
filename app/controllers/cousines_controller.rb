class CousinesController < ApplicationController
  def submit
   @news=New.find(:all)
 @cousine=Cousine.new(params[:cousine])
    @cousine.save
  
 # render :action => 'show'

  end
 

  def show
# @cousine = Cousine.find(:all)
 @cousine=Cousine.new
 if @cousine.nil?
 puts "user values are null"

else
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cousine }
  end
  end
  end
  def new
   

 end
end

class AuthorsController < ApplicationController
  before_filter :authenticate_user!
  def index
   @authors = Author.all
  end
  # def show
  # @authors = Author.all
  #end
  def new
    @author = Author.new
  end

  def edit
    @author = Author.find params[:id]
  end
  def update
      @author = Author.find(params[:id])
      if @author.update_attributes(params[:author])
        redirect_to authors_path, notice: 'Author was successfully updated.' 
      else
        render action: "edit" 
      end
  end

  def create
    @author = Author.new 
    if @author.update_attributes(params[:author])
      redirect_to authors_path, notice: 'Author was successfully created.' 
    else
      render action: "new" 
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_path, notice: 'Author was successfully deleted.' 
  end
end

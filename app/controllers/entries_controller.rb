class EntriesController < ApplicationController

   
  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end
  
  def create
    @entry = Entry.new(params[:entry].permit(:first_name, :last_name, :email_address, :gravatarimage_image_url))
   
    if @entry.save
       redirect_to @entry
    else
      render 'new'
    end
  end
  
  def show
    @entry = Entry.find(params[:id])
  end
  
  def edit
    @entry = Entry.find(params[:id])
  end
  
  def update
    @entry = Entry.find(params[:id])
    
    if @entry.update(params[:entry].permit(:first_name, :last_name, :email_address, :gravatarimage_image_url))
      redirect_to @entry
    else 
      render 'edit'
    end
  end
  
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to entries_path
  end
    
  private
  def entry_params
    params.require(:entry).permit(:first_name, :last_name, :email_address, :gravatarimage_image_url)
  end
end

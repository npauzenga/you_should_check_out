class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end
  
  def show
    @resource = Resource.find(params[:id])
  end
  
  def new
    @resource = Resource.new
  end
  
  def create
    @resource = Resource.new(resource_params)
    if @resource.save
      redirect_to '/'
    else
      render 'new'
    end
  end
  
  def edit
    @resource = Resource.find(params[:id])
  end
  
  def update
    @resource = Resource.find(params[:id])
    if @resource.update_attributes(resource_params)
      redirect_to '/'
    else
      render 'edit'
    end
  end
  
  private 
  
    def resource_params
      params.require(:resource).permit(:title, :description, :link)
    end
end

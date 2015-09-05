class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end
  
  def new
    @resource = Resource.new
  end
  
  def create
    @resource = Resource.new(resource_params)
    if @resource.save
      #TODO
    else
      render 'new'
    end
  end
  
  private
  
    def resource_params
      params.require(:title).permit(:description, :link)
    end
end

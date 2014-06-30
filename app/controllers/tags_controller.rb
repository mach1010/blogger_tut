class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]
  
  def show
    @tag = Tag.find(params[:id])
  end
  
  def destroy
    Tag.find(params[:id]).destroy
    
    flash.notice = "Tag successfully deleted"
    redirect_to tags_path
  end
end

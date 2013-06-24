class VersionsController < ApplicationController
  load_and_authorize_resource

  def revert
    @version = Version.find(params[:id])
    if @version.reify
      @version.reify.save!
    else
      @version.item.destroy
    end
    redirect_to :back, :notice => "Reverted to previous version from #{@version.created_at}"
  end

  def show
    @version = Version.find(params[:id])
    if @version.reify
      @page = @version.reify
      render "pages/show"
    else
      redirect_to :back, :notice => "Something went wrong; the selected version could not be retrieved."
    end
  end

end

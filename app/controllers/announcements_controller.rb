class AnnouncementsController < ApplicationController
  expose(:announcement, attributes: :announcement_params)
  expose(:announcements)
  before_action :authenticate_user!, except: :show

  def create
    if announcement.save
      redirect_to announcements_path
    else
      render :new
    end
  end

  def update
    if announcement.save
      redirect_to announcements_path
    else
      render :edit
    end
  end

  private

  def announcement_params
    params.require(:announcement).permit(:title, :body)
  end
end

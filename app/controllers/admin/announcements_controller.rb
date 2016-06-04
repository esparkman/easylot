class Admin::AnnouncementsController < Admin::AdminController
  expose(:announcement, attributes: :announcement_params)
  expose(:announcements)

  def create
    if announcement.save
      redirect_to admin_path
    else
      render :new
    end
  end

  def update
    if announcement.save
      redirect_to admin_path
    else
      render :edit
    end
  end

  private

  def announcement_params
    params.require(:announcement).permit(:title, :body)
  end
end

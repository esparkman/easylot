class Admin::SettingsController < Admin::AdminController
  expose(:settings)
  expose(:setting, attributes: :setting_params)

 def create
    if setting.save
      redirect_to admin_path
    else
      render :new
    end
  end

  def update
    if setting.save
      redirect_to admin_path
    else
      render :edit
    end
  end

  private

  def setting_params
    params.require(:setting).permit(:footer)
  end
end

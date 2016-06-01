class ListingsController < ApplicationController
  expose(:vehicles) { Vehicle.all }
  expose(:announcements) { Announcement.all }
end

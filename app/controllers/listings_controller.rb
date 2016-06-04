class ListingsController < ApplicationController
  expose(:vehicles) { Vehicle.all }
  expose(:announcements) { Announcement.all }
  expose(:results) { Vehicle.search(params.fetch(:query, "*")) }
end

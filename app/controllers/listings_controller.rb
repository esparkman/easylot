class ListingsController < ApplicationController
  expose(:vehicles) { Vehicle.where(featured: true) }
  expose(:announcements) { Announcement.all }
  expose(:results) { Vehicle.search(params.fetch(:query, "*")) }
end

class ListingsController < ApplicationController
  expose(:vehicles) { Vehicle.all }
end

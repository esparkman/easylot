class Vehicle < ActiveRecord::Base
  mount_uploaders :photos, PhotoUploader

  searchkick word_start: [:make, :model, :year]
  # searchkick text_start: [:make, :model, :year]
end

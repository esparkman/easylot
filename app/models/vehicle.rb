class Vehicle < ActiveRecord::Base
  mount_uploaders :photos, PhotoUploader

  searchkick word_start: [:make, :model, :year]
  # searchkick text_start: [:make, :model, :year]
  default_scope { order(created_at: :desc) }
end

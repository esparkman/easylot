class Vehicle < ActiveRecord::Base
  mount_uploaders :photos, PhotoUploader
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  searchkick word_start: [:make, :model, :year]
  # searchkick text_start: [:make, :model, :year]
end

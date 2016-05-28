class Vehicle < ActiveRecord::Base
  mount_uploaders :photos, PhotoUploader
end

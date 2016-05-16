require "administrate/base_dashboard"

class VehicleDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    make: Field::String,
    model: Field::String,
    trim: Field::String,
    year: Field::String,
    vin: Field::String,
    doors: Field::String,
    color: Field::String,
    int_color: Field::String,
    ext_color: Field::String,
    description: Field::Text,
    sold: Field::Boolean,
    used: Field::Boolean,
    new: Field::Boolean,
    warranty: Field::Boolean,
    warranty_type: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    featured: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :make,
    :model,
    :trim,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :make,
    :model,
    :trim,
    :year,
    :vin,
    :doors,
    :color,
    :int_color,
    :ext_color,
    :description,
    :sold,
    :used,
    :new,
    :warranty,
    :warranty_type,
    :created_at,
    :updated_at,
    :featured,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :make,
    :model,
    :trim,
    :year,
    :vin,
    :doors,
    :color,
    :int_color,
    :ext_color,
    :description,
    :sold,
    :used,
    :new,
    :warranty,
    :warranty_type,
    :featured,
  ].freeze

  # Overwrite this method to customize how vehicles are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(vehicle)
  #   "Vehicle ##{vehicle.id}"
  # end
end

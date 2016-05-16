require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    authem_sessions: Field::HasMany.with_options(class_name: "Authem::Session"),
    id: Field::Number,
    email: Field::String,
    password_digest: Field::String,
    password_reset_token: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    admin: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :authem_sessions,
    :id,
    :email,
    :password_digest,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :authem_sessions,
    :id,
    :email,
    :password_digest,
    :password_reset_token,
    :created_at,
    :updated_at,
    :admin,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :authem_sessions,
    :email,
    :password_digest,
    :password_reset_token,
    :admin,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end

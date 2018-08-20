require "administrate/base_dashboard"

class SermonSectionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    sermon: Field::BelongsTo,
    id: Field::Number,
    speaker_note: Field::Text,
    personal_note: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    title: Field::String,
    sermon_note_param_id: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :sermon,
    :id,
    :speaker_note,
    :personal_note,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :sermon,
    :id,
    :speaker_note,
    :personal_note,
    :created_at,
    :updated_at,
    :title,
    :sermon_note_param_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :sermon,
    :speaker_note,
    :personal_note,
    :title,
    :sermon_note_param_id,
  ].freeze

  # Overwrite this method to customize how sermon sections are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(sermon_section)
  #   "SermonSection ##{sermon_section.id}"
  # end
end

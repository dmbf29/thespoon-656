class Restaurant < ApplicationRecord
  # setting up associations (belongs_to/has_many)
  # validations
  # validates :column_name, validation: :value
  validates :name, presence: true
end

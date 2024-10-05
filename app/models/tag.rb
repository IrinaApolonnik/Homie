class Tag < ApplicationRecord
    has_many :selected_tags, dependent: :destroy
    has_many :collections, through: :selected_tags
end
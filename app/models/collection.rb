class Collection < ApplicationRecord
    has_many :items, dependent: :destroy
    has_many :selected_tags, dependent: :destroy
    has_many :tags
    has_many :comments, :dependent => :destroy
    validates :title, presence: true
end

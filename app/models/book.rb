class Book < ApplicationRecord
    validates :title, :author, :price, presence: true
    has_many :user
end

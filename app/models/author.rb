class Author < ApplicationRecord
    validates :first_name, presence: true
    validates :first_name, uniqueness: true
    has_many :books
end

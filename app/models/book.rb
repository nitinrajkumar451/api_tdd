class Book < ApplicationRecord
    validates :title, :author, presence: true, length: { minimum: 3 }
end

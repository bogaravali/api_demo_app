class UserBooking < ApplicationRecord
    belongs_to :user
    belongs_to :book
end

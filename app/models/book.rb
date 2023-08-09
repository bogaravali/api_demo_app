class Book < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :quantity, presence: true

    belongs_to :library

    has_many :user_bookings
    has_many :users, through: :user_bookings

    def remaining_quantity
        (quantity - user_bookings.where('returned = false').count)
    end
end

class Bike < ApplicationRecord
    has_one_attached :photo

    scope :brand, ->(brand) { where brand: brand }
    scope :status, ->(status) { where status: status } 

    include PgSearch::Model
    pg_search_scope :search,
        against: [ :name, :brand ],
        using: {
            tsearch: { prefix: true } 
        }
end

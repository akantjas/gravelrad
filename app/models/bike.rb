class Bike < ApplicationRecord
    has_one_attached :photo

    scope :brandfilter, ->(brand) { where("brand = ?", brand) } 

    include PgSearch::Model
    pg_search_scope :search,
        against: [ :name, :brand ],
        using: {
            tsearch: { prefix: true } 
        }
end

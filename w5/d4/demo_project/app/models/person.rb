class Person < ApplicationRecord
    validates :name, presence: true

    belongs to :house
        primary_key: :id,
        foreign_key: :house_id,
        class_name: :House
end

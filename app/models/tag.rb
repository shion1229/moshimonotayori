class Tag < ApplicationRecord

    validates :name, presence: true

    has_many :toilet_tag_relations, dependent: :destroy


    has_many :toilets, through: :toilet_tag_relations, dependent: :destroy
end

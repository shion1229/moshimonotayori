class Toilet < ApplicationRecord
    mount_uploader :image, ImageUploader

    has_many :toilet_tag_relations, dependent: :destroy

    has_many :tags, through: :toilet_tag_relations, dependent: :destroy
end






class Garbage < ApplicationRecord

    mount_uploader :image, ImageUploader
    
    has_many :garbage_tag_relations, dependent: :destroy

    has_many :tags, through: :garbage_tag_relations, dependent: :destroy

end

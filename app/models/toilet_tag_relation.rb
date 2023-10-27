class ToiletTagRelation < ApplicationRecord
  belongs_to :toilet
  belongs_to :tag
end

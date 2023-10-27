class GarbageTagRelation < ApplicationRecord
  belongs_to :garbage
  belongs_to :tag
end

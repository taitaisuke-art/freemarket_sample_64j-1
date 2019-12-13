class ItemImage < ApplicationRecord
  belongs_to :item, optional: true, inverse_of: :item_images

  mount_uploaders :image, ImageUploader
  # 複数枚だから s つける
end

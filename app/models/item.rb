class Item < ActiveRecord::Base
  default_scope { order(rating: :desc) }
  mount_uploader :image, ImageUploader

  def vote_up!
    self.rating += 1
    self.save
  end

  def vote_down!
    self.rating -= 1
    self.save
  end
end

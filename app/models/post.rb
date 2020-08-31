class Post < ApplicationRecord
  validates :title, presence: true
  validates :image_url, presence: true
  validates :content, presence: true

  before_save :set_delet_word

  def set_delet_word
    self.content = (self.content.downcase).gsub("spoiler","")
  end

end

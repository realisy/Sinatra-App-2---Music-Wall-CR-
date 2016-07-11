class Track < ActiveRecord::Base

  validates :title, presence: true, length: { maximum: 40 }
  # validates :url, presence: true, length: { maximum: 140 }
  validates_format_of :url, with: /\A(http(?:s)?).+/ , allow_blank: true
  validates :author, presence: true, length: { maximum: 25 }

end

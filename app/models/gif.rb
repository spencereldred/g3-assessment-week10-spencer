class Gif < ActiveRecord::Base
  validates :url, :title, presence: true
end
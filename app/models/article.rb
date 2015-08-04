class Article < ActiveRecord::Base
  has_many:comments, :as => :source, dependent: :destroy

  validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true
end

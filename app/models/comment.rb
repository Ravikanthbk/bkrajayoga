class Comment < ActiveRecord::Base
  belongs_to :source, :polymorphic => true, :foreign_key => "source_id"
  validates :commenter, presence: true
  validates :email, presence: true
  validates :body, presence: true
  
end

class Article < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :body

  # temporary
  def likes
    10
  end

  def comments
    10
  end
end
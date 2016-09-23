class Article < ActiveRecord::Base
  belongs_to :user

  # temporary
  def likes
    10
  end

  def comments
    10
  end
end
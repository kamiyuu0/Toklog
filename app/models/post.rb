class Post < ApplicationRecord
  belongs_to :user

  def recorded_on_formatted
    recorded_on.strftime("%Y/%m/%d")
  end
end

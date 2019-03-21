class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def username=(username)
    self.user = User.find_or_create_by(username: username)
  end

  def username
    if self.user
      self.user.username
    else
      nil
    end
  end

end

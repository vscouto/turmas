class User < ActiveRecord::Base
  attr_accessible :email, :password, :username

  validate :email, :password, :username, :presence => true
  validate :email, :username, :uniqueness => true


  def authenticate password
    #user = find_by_username(username)
    if self && self.password == password
      self
    else
      nil
    end
  end

end

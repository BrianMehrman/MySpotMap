class User < ActiveRecord::Base
  
  has_many :user_locations
  has_many :locations, :through => :user_locations
  
  def self.create_with_omniauth(auth)
    
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end

end

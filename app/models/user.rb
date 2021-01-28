class User < ApplicationRecord
    validates :username, :email, uniqueness: true
    validates :password, length: { minimum: 8 }
    validates :username, :email, :password, presence: true
    
    scope :adults, -> { where('birthday >= ?', 18.years.from_now) }
    
    def full_name
        "#{last_name} #{first_name}"
    end
end

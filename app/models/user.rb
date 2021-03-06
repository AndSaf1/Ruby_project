class User < ApplicationRecord
    validates :personal_data, :email, uniqueness: true
    validates :password, length: { minimum: 8 }
    validates :personal_data, :email, :password, presence: true
    
    scope :adults, -> { where('birthday >= ?', 18.years.from_now) }
    
    has_many :memberships
    has_many :groups, through: :memberships

    has_many :posts, dependent: :destroy

    has_one :pictures, as: :imageable

        def full_name
        "#{last_name} #{first_name}"
    end

end

class Membership < ApplicationRecord
    belongs_to :user 
    belongs_to :group

    validates :group_id, uniqueness: { scope: [:user_id] }

    enum status: [ :active, :unactive, :banned ]

    after_initialize :init

    def init
        self.status ||= :unactive
    end
    
end

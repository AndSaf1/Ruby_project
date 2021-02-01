class Group < ApplicationRecord
    has_many :users, through: Membership

    validates :name, uniqueness: true 
    validates :name, :group_type, :status, presence: true

    has_many :memberships, dependent: :destroy
    has_many :users, through: :memberships

    enum status: [ :active, :archived, :removed, :permanently_removed ]

    after_initialize :init

    def init
        self.status ||= :active
    end

end

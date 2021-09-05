class Page < ApplicationRecord

    belongs_to :subject,{:optional=>false}
    has_and_belonds_to_many :admin_users

    scope :visible , lambda { where(:visible =>true) }
    scope :invisible , lambda {where(:visible =>false)}
    scope :sorted , lambda {order("position ASC")}
end

class Hitcher < ActiveRecord::Base
    validates :departure, :destination, :depart_time, :arrival_time, :contact_info, presence: true
    belongs_to :user
end

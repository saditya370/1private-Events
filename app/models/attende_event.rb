class AttendeEvent < ApplicationRecord

    belongs_to :attendee, class_name: 'user'
    belongs_to :event, class_name: 'event'
end

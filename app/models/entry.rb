class Entry < ActiveRecord::Base
  #validates :email_address, presence: true
  include Gravtastic
  gravtastic
end

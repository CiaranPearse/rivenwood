class Profile < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :postal, using: :us_zip
end

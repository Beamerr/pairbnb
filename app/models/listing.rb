class Listing < ApplicationRecord
  belongs_to :user
  has_many :reservations
  mount_uploaders :avatars, AvatarUploader

  scope :city, -> (city) { where city: city }
  scope :rent, -> (min, max) { where('rent > ? AND rent < ?', min, max) }
  


end


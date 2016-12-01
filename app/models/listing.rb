class Listing < ApplicationRecord
  belongs_to :user
  has_many :reservations
  mount_uploaders :avatars, AvatarUploader

  scope :city, -> (city) { where city: city }
  scope :rent, -> (min, max) { where('rent > ? AND rent < ?', min, max) }
  scope :rooms, -> (rooms) { where rooms: rooms }
  scope :max_occupants, -> (max_occupants) { where max_occupants: max_occupants }

  include PgSearch
  pg_search_scope :search_by_description, :against => :description

  #scope :is_available, ->(a) { where(availability: a)}

end


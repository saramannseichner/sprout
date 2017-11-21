class Plant < ApplicationRecord
  has_many :order_items
  has_attachment :photo
  monetize :price_cents


  validates :sun_level, presence: true
  validates :water_level, presence: true
  validates :care_level, presence: true
  validates :price, presence: true
  validates :common_name, presence: true, uniqueness: true
  validates :size, presence: true
  validates :description, presence: true

  include PgSearch
  pg_search_scope :filter, against: [ :sun_level, :care_level, :price ]

  def show_sun_level
    case self[:sun_level]
    when 1
      "Full Shade"
    when 2
      "Partial Sun"
    when 3
      "Full Sun"
    else
      errors.add(:plant, "is not a valid sun level")
    end
  end

  def show_water_level
    case self[:water_level]
    when 1
      "Every 12 to 15 days"
    when 2
      "Every 7 to 10 days"
    when 3
      "Once a week"
    when 4
      "Two times a week"
    else
      errors.add(:plant, "is not a valid water level")
    end
  end

  def show_care_level
    case self[:care_level]
    when 1
      "Easy"
    when 2
      "Medium"
    when 3
      "Hard"
    else
      errors.add(:plant, "is not a valid care level")
    end
  end

  def show_size
    case self[:size]
    when 1
      "Extra Small"
    when 2
      "Small"
    when 3
      "Medium"
    when 4
      "Large"
    when 5
      "Extra Large"
    else
      errors.add(:plant, "is not a valid size")
    end
  end

  def is_suspended?
    self[:suspended] == 1
  end


  def self.journey_search(args = {})
    if args[:care] <= 33
      care = 1
    elsif args[:care] >= 66
      care = 3
    else
      care = 2
    end
    case args[:size]
    when nil
      where("sun_level = ? AND care_level = ? AND suspended = 1", args[:sun], care).limit(3)
    when 1
      where("sun_level = ? AND care_level = ? AND size = 1", args[:sun], care).limit(3)
    when 2
      where("sun_level = ? AND care_level = ? AND size = 2", args[:sun], care).limit(3)
    when 3
      where("sun_level = ? AND care_level = ? AND size = 3", args[:sun], care).limit(3)
    else
      where("sun_level = ? AND care_level = ?", args[:sun], care).limit(3)
    end
  end

  def self.filter(sun_level, care_level, size)
    plants = Plant.all
    results = []

    plants.each do |plant|
      # if sun_level.present? && care_level.present?
      if plant.sun_level == sun_level && plant.care_level == care_level && plant.size == size
        results << plant
      end
      # elsif sun_level.present? && care_level.nil?
      #   results = plants.where(sun_level: sun_level).to_a
      # elsif sun_level.nil? && care_level.present?
      #   results = plants.where(care_level: care_level).to_a
      # end
    end

    return results
  end
end



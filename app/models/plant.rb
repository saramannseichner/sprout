class Plant < ApplicationRecord
  has_many :order_items

  validates :sun_level, presence: true
  validates :water_level, presence: true
  validates :care_level, presence: true
  validates :price, presence: true
  validates :common_name, presence: true, uniqueness: true
  validates :size, presence: true
  validates :description, presence: true

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
      "Dry between watering"
    when 2
      "Well Drained"
    when 3
      "Slightly Damp"
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


end

class Employee < ActiveRecord::Base

  validate :always_first_name
  validate :always_last_name
  validate :range_hourly_rate
  validate :belongs_to_store

  def always_first_name
    if first_name.blank?
      errors.add(:first_name, "must have a value")
    end
  end
  
  def always_last_name
    if last_name.blank?
      errors.add(:last_name, "must have a value")
    end
  end
  
  def range_hourly_rate
    if hourly_rate < 40 || hourly_rate > 200
      errors.add(:hourly_rate, "must be between 40 and 200")
    end
  end 

  def belongs_to_store
    if store_id.nil?
      errors.add(:store, "must be belog to a store")
    end
  end 

end

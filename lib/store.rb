class Store < ActiveRecord::Base
  has_many :employees

  validate :store_name_length
  validate :revenue_validation


  def store_name_length
    if name.length < 3
      errors.add(:name, "Store numbers must be a minimum length of 3 characters")
    end 
  end

  def revenue_validation
    #chatGPT assisted with this conditional
    if annual_revenue.nil? ||annual_revenue < 0 || !annual_revenue.is_a?(Integer)
      errors.add(:name, "annual revenue must be greater than zero")

      errors.full_messages.each do |message|
        puts message
      end
      
    end 

  end
end

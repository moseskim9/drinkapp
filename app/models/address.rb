class Address < ActiveRecord::Base
  belongs_to :store
  belongs_to :order

  def full_name
    "#{number} #{street_name} #{city} #{zip_code}"
  end
end

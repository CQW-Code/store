class Item < ApplicationRecord
  #before_save check_desc
  belongs_to :department

  #def check_desc
    #if self.description.blank?
     # self.description = 'Description available soon'
    #end 
  #end


end

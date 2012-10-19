class Cousine < ActiveRecord::Base
  # attr_accessible :title, :body
 attr_accessible :cousinename, :location,:item,:cost,:availabletime,:avatar
   has_attached_file :avatar


     validates_presence_of :cousinename, :location,:item,:cost,:availabletime,:avatar
end

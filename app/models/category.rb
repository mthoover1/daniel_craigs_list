class Category < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts, :dependent => :destroy

  #class method that populates a list
  def self.populate
    array_of_names = []
    self.all.each { |category| array_of_names << category.name }
    array_of_names
  end
end

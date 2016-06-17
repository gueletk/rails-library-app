class Item < ActiveRecord::Base
  def self.types
    %w(Book)
  end
end

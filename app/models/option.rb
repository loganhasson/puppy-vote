class Option < ActiveRecord::Base

  validates :name, uniqueness: true

  def increase_count
    self.count += 1
    self.save
  end

end
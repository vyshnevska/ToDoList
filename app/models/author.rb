class Author < ActiveRecord::Base
  has_many :tasks
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates :name, :presence=>true
end

class Book < ActiveRecord::Base
	
	belongs_to :genre
    has_many :contents, dependent: :destroy 
	validates :title, presence: true
	validates :year, numericality: { only_integer: true }
end


class Task < ApplicationRecord

	belongs_to :tasklist
	
	validates :title, presence: true

	validates :description, presence: true

	validates :priority, presence: true

	validates :status, presence: true

end


 
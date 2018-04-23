class Contact < ApplicationRecord
	def name
"#{self.firstname} #{self.lastname}"
end
end

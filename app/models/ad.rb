class Ad < ApplicationRecord
	validates :title, :desc, :tel, :name, presence: true

end

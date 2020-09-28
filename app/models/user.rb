class User < ApplicationRecord
	with_options presence: true do
		validates :name
		validates :email, format: { with: /\A^\S+@\S+\.\S+$\z/, message: 'is invalid. Input @ character.' }
		validates :password, format: { with: /\A[a-zA-Z0-9]+\z/, message: 'is invalid. Input half-width characters.' }
		validates :uid
		validates :admin
	end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments


         ROLES = %w[admin moderator author banned].freeze

  def admin?
    self.role == "admin"
  end

  def author?
    self.role == "author"
  end

end

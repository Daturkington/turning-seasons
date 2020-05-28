class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :shopping_lists
  has_many :favourites

  def shopping_list
    ShoppingList.where(user: self).where(completed: false).first
  end

  def completed_shopping_lists
    ShoppingList.where(user: self).where(completed: true)
  end
end

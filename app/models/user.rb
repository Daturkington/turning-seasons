class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shopping_lists, dependent: :destroy
  has_many :favourites
  has_many :reviews, dependent: :destroy

  def shopping_list
    ShoppingList.where(user: self).where(completed: false).first
  end

  def completed_shopping_lists
    ShoppingList.where(user: self).where(completed: true)
  end
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :shift_details, inverse_of: :user, dependent: :nullify

  searchable do
    text :name
    text :email
    text :emp_code
  end
end

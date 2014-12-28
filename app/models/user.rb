class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :movies #Every user have movies
  has_many :reviews, dependent: :destroy #if user get destroyed then all reviews all get destroyed with it.  

end

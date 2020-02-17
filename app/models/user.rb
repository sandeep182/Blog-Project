class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :permissions
  has_many :roles, through: :permissions 
  
  after_create :set_role

  def set_role
    @permission = Permission.new
    @permission.user_id = self.id
    @permission.role_id = Role.find_by(name: "Author").id
    @permission.save
  end  
end

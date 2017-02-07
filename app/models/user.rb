class User < ApplicationRecord
  has_many :tasks , :foreign_key => :assigned_to_id

  has_many :team_users
  has_many :teams, through: :team_users
end

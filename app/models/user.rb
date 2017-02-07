class User < ApplicationRecord
  has_many :tasks , :foreign_key => :assigned_to_id
end

class Task < ApplicationRecord
  belongs_to :status
  belongs_to :priority
  belongs_to :epic
  belongs_to :assigned_to, class_name: 'User', :foreign_key => :assigned_to_id
end

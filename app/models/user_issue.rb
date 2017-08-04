class UserIssue < ApplicationRecord
  belongs_to :user
  belongs_to :issue
  has_many :symptoms
end

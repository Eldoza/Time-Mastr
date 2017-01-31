class Employee < User
  scope :submitted_yesterday, -> (user) { user.posts.where(date: Date.now.yesterday) }
end

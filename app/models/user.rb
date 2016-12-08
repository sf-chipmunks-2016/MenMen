class User < ActiveRecord::Base
  has_secure_password
  
  has_many :mentoring_session, class_name: "Session", foreign_key: "mentor_id"
  has_many :studying_session, class_name: "Session", foreign_key: "student_id"
  has_many :feedbacks

end

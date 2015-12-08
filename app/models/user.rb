class User < ActiveRecord::Base
  has_many :jobs
  has_many :apps

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 # created a method to count jobs per user. We don't have to explicitly say user.jobs.count because we already are on the user object

 def job_count
	jobs.count
 end

 # second method to get date and time of last job posting of a user. order() receives first, what we are sorting by and then if it is in descending or ascending order.
 def last_job_posted_at
    last_job_posted = jobs.order(created_at: :desc).first   
    last_job_posted.created_at
 end


end

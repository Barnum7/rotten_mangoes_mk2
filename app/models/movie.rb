class Movie < ActiveRecord::Base

	mount_uploader :poster, PosterUploader
	has_many :reviews
	
	validates :title,
	presence: true

	validates :director,
	presence: true

	validates :runtime_in_minutes,
	numericality: { only_integer: true }

	validates :description,
	presence: true

	validates :poster,
	presence: true

	validates :release_date,
	presence: true

	def review_average
		if reviews.size > 0
			reviews.sum(:rating_out_of_ten)/reviews.size
		else
			"This movie has not been rated"
		end
	end

	# validate :release_date_is_in_the_future

	protected

	# def release_date_is_in_the_future
	# 	if release_date.present?
	# 		errors.add(:release_date, "should proably be in the future") if release_date < Date.today
	# 	end
	# end

end

class Product < ApplicationRecord
	validates :title,:description,:image_url,presence:true
	validates :price,numericality:{greater_then_or_equal_to:0.01}
	validates :title,uniqueness:true
	validates :image_url,allow_blank:true,
	format:{
		with: %r{\.(git|jpg|png|jpeg)\Z}i,
		message: 'must be a URL for GIT,JPG,PNG OR JPEG image.'
	}
	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item
	private
	#确保没有商品引用此产品
		def ensure_not_referenced_by_any_line_item
			unless line_items.empty?
				errors.add(:base,'Line Item present')
				throw :abort
			end
		end
end

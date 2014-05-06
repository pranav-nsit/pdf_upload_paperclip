class User < ActiveRecord::Base
	validates :name, :presence =>true
	validates :email, :presence =>true
	has_attached_file :attach
	validates_attachment_size :attach, :less_than =>2.megabytes
	validates_attachment_content_type :attach, :content_type => ["application/pdf"]
end

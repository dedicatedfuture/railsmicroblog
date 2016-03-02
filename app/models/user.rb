class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :comments
  before_destroy :destroy_posts_comments

  def destroy_posts_comments
    self.posts.destroy_all
    self.comments.destroy_all
  end
end

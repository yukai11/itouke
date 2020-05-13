class Post < ApplicationRecord
  validates :content,length:{in: 1..100}
end

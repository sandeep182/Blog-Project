class Article < ApplicationRecord
    belongs_to :category
    validates_presence_of :title, :body
    validates_uniqueness_of :title
    validates_length_of :title, :minimum => 50
    validates_length_of  :body, :maximum => 1000
end

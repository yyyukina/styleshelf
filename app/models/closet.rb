class Closet < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :category
    belongs_to :size
    belongs_to :color
    belongs_to :season
    belongs_to :search
    belongs_to :user
    has_one_attached :image

    validates :image,   presence: true
    validates :category_id, numericality: { other_than: 1 }
    validates :size_id, numericality: { other_than: 1 }
    validates :color_id, numericality: { other_than: 1 }
    validates :season_id, numericality: { other_than: 1 }
    
end

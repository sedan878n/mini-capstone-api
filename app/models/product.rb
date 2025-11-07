class Product < ApplicationRecord
    
  validates :name, presence: true
  validates :quantity, presence: true

  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }

  validates :description, presence: true
  validate :description_cannot_include_forbidden_words

    def name_list
     return name&.split(" ")
    end

    def friendly_created_at
     created_at.strftime("%b %e, %l:%M %p")
    end

    def is_discounted
     price.to_f >= 10
    end

    def tax
     price.to_f * 0.09
    end

    def total
     price.to_f + tax
    end 

          private

    def description_cannot_include_forbidden_words
      forbidden_words = ["banned", "illegal", "test", "fake", "donald"]
      return unless description

      if forbidden_words.any? { |word| description.downcase.include?(word)}
      errors.add(:description, "The description contains a forbidden word")
      end
    end

 end
 
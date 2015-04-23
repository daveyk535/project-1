class Review < ActiveRecord::Base
  belongs_to :burger
  belongs_to :user


  def calc_total
    burgers = Burger.all
    burgers.each do |burger|
      total = 0
      average = 0
      count = Review.where(burger_id: burger.id).count
      reviews = Review.where(burger_id: burger.id)
        reviews.each do |review|
          # puts review.total
          total += review.total.to_f
          average = (total / count).to_f
        end
        puts average
        burger.update_attributes(average_score: average)
    end
  end

end

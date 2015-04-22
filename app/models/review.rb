class Review < ActiveRecord::Base
  belongs_to :burger
  belongs_to :user


  def calc_total
    burgers = Burger.all
    burgers.each do |burger|
      @total = 0
      reviews = Review.where(burger_id: burger.id)
        reviews.each do |review|
          # puts review.total
          @total += review.total.to_i
        end
        puts @total
    end
  end

end


# reviews = Review.all
#         reviews.each do |review|
#           total = 0
#           if review.burger_id
#         end
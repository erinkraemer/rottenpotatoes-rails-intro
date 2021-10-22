class Movie < ActiveRecord::Base
  
   def self.all_ratings 
#      EK: originally hardcoded it
       #%w[G PG PG-13 R NC-17]

#      EK + MJ: Updated after verbal collaboration (no code exchanged)
#      select all unique symbols rating and put into an array with key a and m rating
     Movie.select(:rating).distinct.inject([]){|a, m | a.push m.rating} 
   end

end








  # the following line may not be necessary due to the movie_params function movies_controll
  # watch for duplication 
#   attr_accessor :title, :rating, :description, :release_date
#   enum status: [ :active, :archived ]
#   enum all_ratings: ['G','PG','PG-13','R']


 
  
#   def all_ratings
#     #puts "making it to self.all_ratings"
#     #return %w[G, PG, PG-13, R, NC-17]
#     return all_ratings
#   end
  

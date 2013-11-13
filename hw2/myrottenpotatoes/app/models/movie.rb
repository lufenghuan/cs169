class Movie < ActiveRecord::Base
  searchable do
    string :title
    text :description
    time :release_date
    string :rating
  end
end

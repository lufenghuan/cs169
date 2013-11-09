class Movie
  def initialize(title, year)
    @title = title
    @year = year
  end
  ##
  #def title
  #  @title
  #end
  
  #def title=(new_title)
  #  @title = new_title
  #end

  attr_accessor :title

  #that you can use semicolons as well 
  #as newlines to separate Ruby statements
  def year ; @year ; end
  
  def year=(new_year) ; @year = new_year ; end

  # How to display movie info
  
  #defines a class variable, or what Java calls a static variable,
  @@include_year = false
 
  def Movie.include_year=(new_value)
    @@include_year = new_value
  end

  def full_title
    if @@include_year
      "#{self.title} (#{self.year})"
    else
      self.title
    end
  end

end

beautiful = Movie.new('Life is Beautiful', '1997')
puts "I'm seeing #{beautiful.full_title}"

Movie.include_year = true
puts "I'm seeing #{beautiful.full_title}"

beautiful.title = 'La vita e bella'
puts "Ecco, ora si chiama '#{beautiful.title}!'"

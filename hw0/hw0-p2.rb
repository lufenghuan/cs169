# Define a method hello(name) that takes a string 
# representing a name and returns the string "Hello, " 
# concatenated with the name.
def hello(name)
  "Hello, " << name
end

# Define a method starts_with_consonant?(s) 
# that takes a string and returns true if 
# it starts with a consonant and false otherwise. 
# (For our purposes, a consonant is any letter 
# other than A, E, I, O, U.) 
# NOTE: be sure it works for both upper 
# and lower case and for nonletters!
def starts_with_consonant?(s)
 (/(?=[a-z]+)(?=^([^aeiou]))/i =~ s) == 0
end

# Check if a given strings is a
# binary representation of multiple
# of 4
def binary_multiple_of_4?(s)
  (/^[10]*00$/ =~ s) != nil
end


def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
    #check this first, because some that are devisable by 4 are not leapyears if they are devisable by 100
  elsif year % 4 == 0
    true
  else
    false
  end
end #leap_year

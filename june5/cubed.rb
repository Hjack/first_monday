

def soc number
  if number==1
    return 1
  else
    cubed=number**3 + soc(number-1)
  end
  return cubed
end

puts soc(4)
puts soc(5)
puts soc(6)
puts soc(7)



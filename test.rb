def make_sandwich(element1, element2)
  puts "make_sandwich: #{element1} and #{element2}, mmm"
end
 
make_sandwich("Peanut Butter", "Yakisoba")


def make_sandwich2(element1, element2)
  base = "make_sandwich2: A #{element1} and #{element2}"
  print base
  yield
  base
end

make_sandwich2("gator", "gumbo") do |innards|
  puts "#{innards} on rye"
end


def make_sandwich3(element1, element2)
  print "make_sandwich3: A #{element1} and #{element2} sandwich"
  yield
end

make_sandwich3("gator", "gumbo") do |innards|
  puts "#{innards} on rye"
end


def make_sandwich4(element1, element2)
  puts "make_sandwich4: A #{element1} and #{element2} sandwich"
  yield 
end

make_sandwich4("Creamy peanut butter", "glittering sense of accomplishment") do |b|
  "#{b.reverse} on #{"bread".reverse}" 
end
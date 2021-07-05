def make_sandwich(element1, element2)
  puts yield("A #{element1} and #{element2} sandwich")
end
 
# Wheat, sure!
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |a| "#{a} on wheat" }
 
# Bueno!
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| "#{b} on tortilla" }
 
# Lewis Carroll's Kitchen
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |c| "#{c.reverse} on #{"bread".reverse}" }

# my own
make_sandwich("carrot", "nothingness") do |x|
  puts "#{x} and #{x.downcase} on air"
end
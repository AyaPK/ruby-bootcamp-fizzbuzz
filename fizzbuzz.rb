def fizzbuzz(max, rules)
  print rules
  basic_rules = {3 => "Fizz", 5 => "Buzz", 7 => "Bang"}

  (1..max).map do|i|
    output_contents = []
    basic_rules.map do |key, value|
      if i%key == 0
        output_contents = output_contents.append(value)
      end
    end

    if i % 11 == 0 then output_contents = ["Bong"] end

    if i % 13 == 0
      b_found = false
      (0..output_contents.size-1).map do |j|
        if output_contents[j][0] == "B"
          output_contents.insert(j, "Fezz")
          b_found = true
        end
      end
      unless b_found then output_contents.append("Fezz") end
    end

    if i % 17 == 0 then output_contents = output_contents.reverse() end

    if output_contents == [] then print i else print output_contents.join("") end
    puts
  end

end

puts "Maximum Value?"
print "> "
fizzbuzz(ARGV[0].to_i, ARGV[1])
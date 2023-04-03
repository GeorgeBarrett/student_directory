def input_students
  puts "To finish entering students, just hit return twice"
  puts "---------------------------------"
  puts "Please type the name of the student and press return. Then type the cohort and press return"
  
  students = []

  name = gets.chomp
  cohort = gets.chomp
  
  while !name.empty? do
  
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
  
    name = gets.chomp
    cohort = gets.chomp
  end
  students  
end
  
def print_header
  puts "The students of Villains Academy" 
  puts "-------------"
end
  
def print(students)
  students.each do |x|
    puts "#{x[:name]} (#{x[:cohort]} cohort)"
  end
end
  
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
  
students = input_students
print_header
print(students)
print_footer(students)
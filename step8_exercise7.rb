def input_students
  puts "Please enter the names of the students"
  name = gets.chomp
  puts "Please enter the student's cohort"
  cohort = gets.chomp
  puts "To finish, just hit return twice"
  
  students = []
  
  while !name.empty? do
  
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
  
    name = gets.chomp
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
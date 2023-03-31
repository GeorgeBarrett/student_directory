# student_count = 11

## array method
# students = [
#   "Dr. Hannibal Lecter",
#   "Darth Vader",
#   "Nurse Ratched",
#   "Michael Corleone",
#   "Alex DeLarge",
#   "The Wicked Witch of the West",
#   "Terminator",
#   "Freddy Krueger",
#   "The Joker",
#   "Joffrey Baratheon",
#   "Norman Bates"
# ]

# puts "The students of Villains Academy"
# puts "-------------"
# puts students[0]
# puts students[1]
# puts students[2]
# puts students[3]
# puts students[4]
# puts students[5]
# puts students[6]
# puts students[7]
# puts students[8]
# puts students[9]
# puts students[10]
# puts "Overall, we have #{student_count} great students"


## array of hashes method 
# students = [
#     {name: "Dr. Hannibal Lecter", cohort: :november},
#     {name: "Darth Vader", cohort: :november},
#     {name: "Nurse Ratched", cohort: :november},
#     {name: "Michael Corleone", cohort: :november},
#     {name: "Alex DeLarge", cohort: :november},
#     {name: "The Wicked Witch of the West", cohort: :november},
#     {name: "Terminator", cohort: :november},
#     {name: "Freddy Krueger", cohort: :november},
#     {name: "The Joker", cohort: :november},
#     {name: "Joffrey Baratheon", cohort: :november},
#     {name: "Norman Bates", cohort: :november}
# ]

## methods and user inputs
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []

  name = gets.chomp

  while !name.empty? do

    students << {name: name, cohort: :november}
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

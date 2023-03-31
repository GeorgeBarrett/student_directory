student_count = 11

students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

puts "The students of Villains Academy"
puts "-------------"

students.each.with_index(1) do |student, index|  
  if student[0] == "N"
    puts "#{student} #{index}"
  end
end

puts "Overall, we have #{student_count} great students"
# adding more info to students
students = [
  {name: "Dr. Hannibal Lecter", hobby: "cannibalism", cohort: :november},
  {name: "Darth Vader", hobby: "the dark side", cohort: :november},
  {name: "Nurse Ratched", hobby: "pottery", cohort: :november},
  {name: "Michael Corleone", hobby: "Origami", cohort: :november},
  {name: "Alex DeLarge", hobby: "baking", cohort: :november},
  {name: "The Wicked Witch of the West", hobby: "evil magic", cohort: :november},
  {name: "Terminator", hobby: "judgment day", cohort: :november},
  {name: "Freddy Krueger", hobby: "nightmares", cohort: :november},
  {name: "The Joker", hobby: "having a laugh", cohort: :november},
  {name: "Joffrey Baratheon", hobby: "caving", cohort: :november},
  {name: "Norman Bates", hobby: "larping", cohort: :november}
]

def print(students)
  students.each do |student|
    puts "#{student[:name]}, hobby: #{student[:hobby]}, cohort: #{student[:cohort]}"
  end
end

print(students)


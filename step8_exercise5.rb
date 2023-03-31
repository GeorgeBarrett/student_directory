# adding more info to students
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, hobby: :cannibalism},
  {name: "Darth Vader", cohort: :november, hobby: :dark-side},
  {name: "Nurse Ratched", cohort: :november, hobby: :hospital-crimes},
  {name: "Michael Corleone", cohort: :november, hobby: :rock-climbing},
  {name: "Alex DeLarge", cohort: :november, hobby: :violence},
  {name: "The Wicked Witch of the West", cohort: :november, hobby: :evil-magic},
  {name: "Terminator", cohort: :november, hobby: :judgment-day},
  {name: "Freddy Krueger", cohort: :november, hobby: :nightmares},
  {name: "The Joker", cohort: :november, hobby: :joking},
  {name: "Joffrey Baratheon", cohort: :november, hobby: :chess},
  {name: "Norman Bates", cohort: :november, hobby: :larping}
]

def print(students)
  students.each do |student|
    puts "#{student[:name]} #{student[:cohort]} #{student[:hobby]}"
  end
end
def cohorts

  students = [

    {name: "Dr. Hannibal Lecter", cohort: :march},
    {name: "Darth Vader", cohort: :march},
    {name: "Nurse Ratched", cohort: :may},
    {name: "Michael Corleone", cohort: :june},
    {name: "Alex DeLarge", cohort: :february},
    {name: "The Wicked Witch of the West", cohort: :march},
    {name: "Terminator", cohort: :march},
    {name: "Freddy Krueger", cohort: :march},
    {name: "The Joker", cohort: :march},
    {name: "Joffrey Baratheon", cohort: :may},
    {name: "Norman Bates", cohort: :november}
  
 ]

    puts "input cohort"
    cohort = gets.chomp.to_sym

    students.each do |x|

    x.each do |k, v|

      if cohort == v
        puts x[:name]
      end
    end
  end
end

cohorts
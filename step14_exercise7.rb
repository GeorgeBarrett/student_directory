require "csv"

@students = []
@cohort = :november

def add_students(name, cohort)
  @students << {name: name, cohort: cohort.to_sym}    
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list"
  puts "4. Load the list"
  puts "9. Exit"
end

def interactive_menu
  loop do
    print_menu
    user_options(STDIN.gets.chomp)
  end
end

def user_options(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    puts "Enter the name of the file you would like to load?"
    filename = gets.chomp
    if File.exists?(filename)
      load_students(filename)
      puts "Student data loaded from #{filename} and can now be shown by selecting option 2"
    else 
      puts "Sorry, #{filename} doesn't exist."
    end
  when "9"
    exit   
  else
    puts "I don't know what you meant, try again"
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = STDIN.gets.chomp
  while !name.empty? do
    add_students(name, @cohort)
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
  puts "Your students have been added"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  puts "Please enter the file name and extension that you would like to save to"
  filename = STDIN.gets.chomp

  CSV.open(filename, "wb") do |csv|
    @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      csv << student_data
    end
  end
  puts "The student data has been saved"      
end

# def save_students
#   puts "Please enter the file name and extension that you would like to save to"
#   filename = gets.chomp

#   if File.exist?(filename)
#     CSV.open("#{filename}", "w") { |row|
#       @students.each { |student|
#         row << [student[:name], student[:cohort]]
#       }
#     }
#   else
#     file = File.open("students.csv", "w")
#     @students.each { |student|
#       student_data = [student[:name], student[:cohort]]
#       csv_line = student_data.join(", ")
#       file.puts csv_line
#   }
#   end
#   puts "The student data has been successfully saved"      
# end

def load_students(filename)
  CSV.foreach(filename) do |row|
  name, cohort = row
  add_students(name, cohort)
  end
end

def initial_file_load
  filename = "students.csv"
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else 
    puts "Sorry, #{filename} doesn't exist."
    return if filename.nil?
  end
end

initial_file_load
interactive_menu
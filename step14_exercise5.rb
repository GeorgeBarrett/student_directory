@students = []
@cohort = :november

def populating_students_array(name, cohort)
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
    load_from = gets.chomp
    if File.exists?(load_from)
      load_students(load_from)
      puts "Loaded from #{load_from}"
    else 
      puts "Sorry, #{load_from} doesn't exist."
    end
  else
    puts "I don't know what you meant, try again"
  when "9"
    exit 
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = STDIN.gets.chomp
  while !name.empty? do
    populating_students_array(name, @cohort)
    # @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
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
  puts "Which file would you like to save to?"
  save_to = gets.chomp
  file = File.open(save_to, "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

# removed parameter to make it default
def load_students(filename)
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')
    populating_students_array(name, cohort)
    # @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

def find_and_load_file
  filename = "students.csv"
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else 
    puts "Sorry, #{filename} doesn't exist."
    return if filename.nil?
  end
end


find_and_load_file
interactive_menu
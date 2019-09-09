# array of students
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november},
]

# Methods
def interactive_menu
  students = []
  loop do
    # 1. print menu and ask for user input
    puts ""
    puts "==Menu==================="
    puts "1. Input the students"
    puts "2. Show the students"
    puts "----"
    puts "9. Exit"
    puts "========================="
    
    # 2. store the input
    selection = gets.chomp

    # 3. do task as per user input
    case selection
    when "1"
      # input the students
      students = input_students
    
    when "2"
      # show the students
      print_header
      print(students)
      print_footer(students)

    when "9"
      exit # terminate the program
    
    else
      puts "That is not one of the options. Please select again."
    end
  end
end


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  # create an empty array
  students = []

  # get the first name
  name = gets.chomp

  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"

    # get another name from the user
    name = gets.chomp
  end

  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------------------------"
end
def print(students)
  # print all the names of sudents passed to method
  students.each_with_index() do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort].capitalize} cohort)"
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# Method calls
interactive_menu
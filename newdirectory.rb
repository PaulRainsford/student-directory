def input_students
  puts "Please enter the name of the student"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "What is this student's country of birth?"
  birth = gets.chomp
  puts "What is the student's favourite football team?"
  team = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, birth: birth, team: team, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
    if !name.empty?
      puts "What is this student's country of birth?"
      birth = gets.chomp
      puts "What is the student's favourite football team?"
      team = gets.chomp 
    end
  end
  # return the array of students
  students
end


def print_header
  puts "The Students of Villains Academy"
  puts "-----------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} #{student[:birth]} #{student[:team]} (#{student[:cohort]} cohort)"
  end
end
  

  

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)

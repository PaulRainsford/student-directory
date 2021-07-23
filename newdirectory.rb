def input_students
  puts "Please enter the name of the student"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "Which cohort does the student belong to?"
  cohort = gets.chomp
  # while the name and cohort are not empty, repeat this code
  while !name.empty? || !cohort.empty? do
    name = "A.N.Other" if name.empty?
    cohort = "november" if cohort.empty?
    confirm_info(name, cohort)
    com_inf = gets.chomp
  while com_inf != "1"
    name = gets.chomp
    cohort = gets.chomp
    name = "A.N Other" if name.empty?
    cohort = "november" if cohort.empty?
    confirm_info(name, cohort)
    com_inf = gets.chomp
  end
      students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{students.count} student(s), please enter another name or press Enter twice to end"
    # get another name from the user
    name = gets.chomp
    puts "Please enter the cohort for this student"
    cohort = gets.chomp
  end
  # return the array of students
  students
end

def confirm_info(name, cohort)
  puts "Name: [#{name}], Cohort: [#{cohort}]"
  puts "Yes => 1, No => 2"
end


def print_header
  puts "The Students of Villains Academy".center(80)
  puts "-----------".center(80)
end

def print(students)
  #count = 0
  #while count < students.count
  #  student_info = "#{count+1}. #{students[count][:name]} (#{students[count][:cohort]} cohort)"
  #  puts student_info.center(student_info.length + 10)
  #  count += 1
 # end
#end
cohort_group = students.map{|student| student[:cohort]}.uniq
cohort_group.each do |group|
  puts "[The #{group} cohort]:"
  puts students.map{|student| student[:name] if student[:cohort] == group }.compact
  puts ""
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

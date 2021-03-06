def input_students
  puts "Please enter the name of the student"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.rstrip
    cohort = gets.rstrip
  # while the name and cohort are not empty, repeat this code
  while !name.empty? || !cohort.empty? do
    name = "A.N.Other" if name.empty?
    cohort = "november" if cohort.empty?
    confirm_info(name, cohort)
    com_inf = gets.rstrip
  while com_inf != "1"
    name = gets.rstrip
    cohort = gets.rstrip
    name = "A.N Other" if name.empty?
    cohort = "november" if cohort.empty?
    confirm_info(name, cohort)
    com_inf = gets.rstrip
  end
      students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{students.count} student#{"s" if students.size !=1}, please enter another name or press Enter twice to end"
    # get another name = g from the user
    name = gets.rstrip
    puts "Please enter the cohort for this student"
    cohort = gets.rstrip
  end
  # return the array of students
  students
end

def confirm_info(name, cohort)
  puts "Name: [#{name}], Cohort: [#{cohort}]"
  puts "Yes => 1, No => 2"
end


#def print_header
 # puts "The Students of Villains Academy".center(80)
  #puts "-----------".center(80)
#end

def print(students)
  #count = 0
  #while count < students.count
  #  student_info = "#{count+1}. #{students[count][:name]} (#{students[count][:cohort]} cohort)"
  #  puts student_info.center(student_info.length + 10)
  #  count += 1
  # end
  #end
  if students.count != 0
    puts "The Students of Villains Academy".center(80)
    puts "-----------".center(80)
    cohort_group = students.map{|student| student[:cohort]}.uniq
    cohort_group.each do |group|
      puts "[The #{group} cohort]:"
      puts students.map{|student| student[:name] if student[:cohort] == group }.compact
      puts ""
    end
    puts "Now we have #{students.count} student#{"s" if students.size !=1}"
  else 
    puts "Please enter the name of the student"
  end
end
  

  

#def print_footer(students)
  #puts "Now we have #{students.count} student#{"s" if students.size !=1}"
#end

#nothing happens until we call the methods
students = input_students
#print_header
print(students)
#print_footer(students)

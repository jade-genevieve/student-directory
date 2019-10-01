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
  
# print students by array pos
def print_header
    puts "The students of Villains Academy"
    puts "-------------"
  end

  def print(students, letter)
    students.select { |student| student[:name][0] == letter && student[:name].length < 12}
    .each_with_index do |student, index|  
      puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
# total students here
def print_footer(names)
    puts "Overall, we have #{names.count} great students"
end

students = input_students

print_header
print(students, "f")
print_footer(students)
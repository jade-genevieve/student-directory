def input_students
    puts "Please enter the names of the students, followed by cohort, then age"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    name = gets.chomp
    # puts "Enter student's cohort"
    cohort = gets.chomp.to_sym
    # puts "Enter student's age"
    age = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do  
      # add the student hash to the array
      students << {name: name, cohort: cohort, age: age}
      if students.count < 2
        puts "Only 1 student here"
      else 
      puts "Now we have #{students.count} students".center(40)
      end
      # get another name from the user
      name = gets.chomp
      cohort = gets.chomp.to_sym
      age = gets.chomp

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
    index = 0
     while index < students.count do
        if (students[index][:name].start_with? letter) && (students[index][:name].length < 12)
        puts "#{index+1} - #{students[index][:name]}, #{students[index][:cohort]}, #{students[index][:age]} "
     end
     index +=1
    end
  end


# total students here
def print_footer(names)
    if names.count < 2
        puts "Teaching one student"
    else
        puts "Overall, we have #{names.count} great students"
    end
end

students = input_students

print_header
print(students, "f")
print_footer(students)
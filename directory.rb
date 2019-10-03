def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end


def input_students
  puts "Please enter the names of the students, followed by cohort, then age"
  puts "To finish, just hit return twice"
  students = []
  name = gets.strip.capitalize
  cohort = gets.strip.to_sym
  age = gets.strip

  while !name.empty?
    if cohort.empty?
      cohort = :unknown
    end

    if age.empty?
      age = "Unknown"
    end

    students << { name: name, cohort: cohort, age: age }

    if students.count < 2
      puts "Only 1 student here"
    else
      puts "Now we have #{students.count} students".center(40)
    end

    puts "Enter another student"
    name = gets.strip.capitalize
    break if name.empty?
    cohort = gets.strip.to_sym
    age = gets.strip
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print(students)
  index = 0
  while index < students.count
    # if (students[index][:name].start_with? letter) && (students[index][:name].length < 12)
      puts "#{index + 1}. #{students[index][:name]}, #{students[index][:cohort]}, #{students[index][:age]} ".center(50)
    # end
    index += 1
  end
end

def print_footer(names)
  if names.count < 2
    puts "Teaching one student"
  else
    puts "Overall, we have #{names.count} great students"
  end
end

def print_cohort(students)
  puts ""
  puts ":::Sorted by cohort:::".center(50)
  puts ""
  students.sort_by { |student| student[:cohort] }.map { |student| puts"#{student[:name]}, #{student[:cohort]}, #{student[:age]}".center(50) }
end

interactive_menu

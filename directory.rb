#print students here
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
# print students by array pos
puts "The students of Villains Academy"
puts "-------------"

students.each do |student|
    puts student
end

# total students here
puts "Overall, we have #{students.count} great students"


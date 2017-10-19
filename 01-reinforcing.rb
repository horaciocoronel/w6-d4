classroom = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

def free_rows(classroom)

  classroom.each_with_index do |row, row_number|
    row.each_with_index do |seat, column_number|
      if seat == nil
        puts "Row #{(row_number) + 1} seat #{(column_number) + 1} is free. Do you want to sit there? (y/n)"
        user_input = gets.chomp
        if user_input.downcase == 'y'
          puts "What is your name?"
          student_name = gets.chomp
          row[column_number] = student_name
        end
      end
    end
  end
end

free_rows(classroom)
puts classroom.inspect

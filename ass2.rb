i=0
a=[]
begin
 puts "Enter 1 for adding value , 2 for minimum , 3 for maximum , 4 for sum , 5 for avg , 6 for search , 7 for display , 8 for delete from index, 9 for delete value , 10 for exit : "
 choice=gets.chomp.to_i
 case choice
  when 1
   puts "Enter value to be entered : "
   x=gets.chomp.to_i
   a[i]=x
   i=i+1
  when 2
   puts "Minimum value = "+(a.min).to_s
  when 3
   puts "Maximum value = "+(a.max).to_s
  when 4
   puts "Sum = "+(a.sum).to_s
  when 5
   puts "Average = "+(a.sum/a.length).to_s
  when 6
   puts "Enter element to be searched : "
   y=gets.chomp.to_i
   puts "Element position : "+(a.find_index y).to_s
  when 7
   puts "Array : "
   puts a
  when 8
   puts "Enter index at which element should be deleted : "
   y=gets.chomp.to_i
   a.delete_at y
  when 9
   puts "Enter element to be deleted : "
   y=gets.chomp.to_i
   a.delete y
  when 10
   exit
  else
   puts "Invalid choice!"
 end
 puts "Do you want to continue(Y/N)?"
 ch=gets.chomp.to_s
end while ch=="Y"

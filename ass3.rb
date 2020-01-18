a=[]
i=0
begin
 puts "Enter 1 for mail-id , 2 for display all, 3 for display only edu mail-ids, 4 for search , 5 for delete mail-id by value , 6 for display unique domains of all mail-ids, 7 for count mail-ids in given domain , 8 for exit"  
 choice=gets.chomp.to_i
 case choice
  when 1
   puts "Enter mail-id : "
   mail=gets.chomp
   a.push(mail)
  when 2
   puts "Entered mail-ids : "
   puts a
  when 3
   i=0
   while i<a.length
    if a[i].end_with? "edu"
     puts a[i]
    end
    i=i+1
   end
  when 4
   puts "Enter mail-id to be searched : "
   temp=gets.chomp
   puts "Position : #{a.find_index temp}"
  when 5
   puts "Enter mail-id to be deleted : "
   temp=gets.chomp
   a.delete temp
  when 6
   x={}
   for i in a
    if x.has_key?(i.split('@')[-1])
     b[i.split('@')[-1]]+=1
    else
     b[i.split('@')[-1]]=1
    end
   end
   puts b.keys
  when 7
   x={temp=>0}
   puts "Enter a domain : "
   temp=gets.chomp
   if i.split('@')[-1]==temp
    x[temp]+=1
   end
   puts "Appeared x[temp] times." 
  when 8
   exit
  else
   puts "Invalid Input!"
 end
 puts "Do you want to continue?(y/n)"
 ch=gets.chomp
end while ch=="Y"

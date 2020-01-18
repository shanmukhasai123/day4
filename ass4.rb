class Student
 attr_accessor :name, :rollno, :state, :branch, :cgpa
 def initialize(name=nil,rollno=nil,state=nil,branch=nil,cgpa=nil)
  self.name=name
  self.rollno=rollno
  self.state=state
  self.branch=branch
  self.cgpa=cgpa
 end  
 def display
  puts "name : #{@name}\nrollno : #{@rollno}\nstate : #{@state}\nbranch : #{@branch}\ncgpa : #{@cgpa}"
 end
end

cnt=0
ob=[]
begin
 puts "Enter 1 for adding new Student, 2 for display all students, 3 for display student by branch, 4 for display students by state, 5 for search students by roll no, 6 for search by part of the name, 7 for delete by roll no, 8 for count & display no: of students by state, 9 for count & display no: of students by branch, 10 for exit : "
 choice=gets.chomp.to_i
 case choice
  when 1
   puts "Enter name,rollno,state,branch,cgpa : "
        y=Student.new(gets.chomp,gets.chomp.to_i,gets.chomp,gets.chomp,gets.chomp.to_f)   
   ob.push(y)
  when 2
   for i in a
    i.display
   end
  when 3
   puts "Enter branch to be searched : "
   temp=gets.chomp
   for i in a
    if i.branch.eql? temp
     i.display
    end  
   end
  when 4
   puts "Enter state to be searched : "
   temp=gets.chomp
   for i in a
    if i.state.eql? temp
     i.display
    end
   end
  when 5
   puts "Enter rollno to be selected : "
   temp=gets.chomp.to_i
   for i in a
    if i.rollno==temp
     i.display
    end
   end
  when 6
   puts "Enter part of the name to be searched : "
   temp=gets.chomp
   for i in a
    if i.name.include? temp
     i.display
    end
   end  
  when 7
   puts "Enter rollno to be deleted : "
   temp=gets.chomp.to_i  
   for i in a
    if i.rollno==temp
     a.delete(i)
    end
   end
  when 8 
   x={}
   for i in a
    if x.has_key? i.state
     x[i.state]+=1
    else
     x[i.state]=1
    end
   end
   for i in x.keys
    puts "#{@x[i]} from #{@i}"
   end
  when 9
   x={}
   for i in a
    if x.has_key? i.branch
     x[i.branch]+=1
    else
     x[i.branch]=1
    end
   end
   for i in x.keys
    puts "#{@x[i]} from #{i}"
   end
  when 10
   exit
  else
   puts "Invalid input!"
 end
 puts "Do you want to continue(y/n)?"
 ch=gets.chomp
end while ch=="y"

      PROGRAM syntax7
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cOriginal code created by Kevin Goebbert
cModified by Michael Sessa
c
c Syntax Problem #7
c
c By: Michael Sessa
c Date: 18 September 2017
c
c This program will read a file containing SOI data and compute and output the
c average SOI for the years given below
c
c I have neither given or received, nor have I tolerated others' use of
c unauthorized aid.
c-Michael Sessa
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

       integer iyear(70), i, year(6), year_int(6)
       real soi(70,12), average

cccc BEGIN DO NOT CHANGE ANYTHING BETWEEN STATEMENTS cccc
c Opening file for reading and defining read format 120
       open(unit=12,file='/home/kgoebber/met330/soi.txt',status='old')
120    format(i4,12f6.1)

c Read and discard header lines
       read(12,*)
       read(12,*)
       read(12,*)
       read(12,*)

c Read in SOI data
       do i=1,70
          read(12,120) iyear(i), soi(i,:)
       end do
cccc END OF DO NOT CHANGE ANYTHING BETWEEN STATEMENTS cccc

cDeclares the value of our year array      
      year = (/ 1957, 1965, 1972, 1982, 1997, 2015 /)
cDeclares the values of our year_int array so that it will sum the SOI values
      year_int = year-1950
cDO loop to compute the average SOI for each of the six years
      do i=1,6
         average=SUM(soi(year_int(i),:))/12

cOutput of the average SOI for each of the six years
         print *, "Average SOI for", year(i), "is:", average
         
      end do


       end

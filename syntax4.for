      PROGRAM syntax4


*******************************************************
*By: Michael Sessa
*Date: 9/6/17
*
*This program will calculate a series of 10 potential
*temperatures by reading the temperatures from a file
*with a DO LOOP
*
*I have neither given or received, nor have I tolerated
*others' use of unauthorized aid.
*-Michael Sessa
*******************************************************

*This tells the program to not automatically declare any implicit type variables
      implicit none

*States an integer variable
      integer i

*States our real variables
      real temp, Tk, Pt

*Reads temperatures in Celsius from a file in my met330 directory
      OPEN(UNIT=10,FILE='500_temps.txt',status='old')

*DO LOOP that reads a temperature in Celsius from the file, converts it to Kelvin, and calculates potential temperature for each of the ten temperatures in the file
*The loop also prints output to the screen of the initial temperature in Celsius and the calculated potential temperature in Kelvin for each temperature from the file
      DO i=1, 10
          read(10,*) temp
          Tk=temp+273.15
          Pt=Tk*((1000.0/500.0)**(287.0/1004.0))
          print *, "Temperature #",i
          print *, "The initial 500mb temperature in Celsius was:", temp
          print *, "The calculated potential temperature in Kelvin is:", Pt
      END DO


      end

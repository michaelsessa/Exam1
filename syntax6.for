       PROGRAM syntax6

*****************************************************
*Syntax Problem #6
*
*By: Michael Sessa
*Date: 15 September 2017
*
*This progam will convert a temperature in Fahrenheit
*to its equivalent temperature in Celcius and Kelvin
*using an array and reading from a file
*
*I have neither given or received, nor have I
*tolerated others' use of unauthorized aid.
*-Michael Sessa
*****************************************************
*This tells the program to not automatically declare any implicit type variables
      implicit none
*States our integer variable
      integer i
*This line states our variables as real and states tmpf as an array with 24 values
      real tmpf(24), tmpc, tmpk

*Opens the file to read from in the met330 directory
      OPEN(unit=10,file='vpz_temps.txt',status='old')
*A DO loop that will loop through 24 times to read a temperature in Fahrenheit, convert it to Celsius and Kelvin, and output all three
      do i=1,24
*Tells the program to read from a file a temperature in Fahrenheight from an array
          READ(10,*) tmpf(i)


*This line defines our conversion equation from Fahrenheit to Celsius
          tmpc=(5.0/9.0)*(tmpf(i)-32)
*This line defines our conversion equation from Fahrenheit to Kelvin
          tmpk=tmpc+273.15


*The first and last print statement separate each conversion. The other print statements print ouput of the orignal temperature and the converted temperatures
          print *, " "
          print *, "Temperature in Fahrenheit:", tmpf(i)
          print *, "Temperature in Celsius:", tmpc
          print *, "Temperature in Kelvin:", tmpk
          print *, " "
      end do


      end

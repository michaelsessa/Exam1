      PROGRAM syntax2

*****************************************************
*Syntax Problem #2
*
*By: Michael Sessa
*Date: 30 August 2017
*
*This progam will convert a temperature in Fahrenheit
*to its equivalent temperature in Celcius and Kelvin
*
*I have neither given or received, nor have I
*tolerated others' use of unauthorized aid.
*-Michael Sessa
*****************************************************
*This tells the program to not automatically declare any implicit type variables
      implicit none

*This line states our variables as real
      real tmpf, tmpc, tmpk

*This line prints output to the screen asking the user to input the temperature they want to convert
      print *, "What is the temperature in Fahrenheit you want to convert?"


*This line tells the program to expect an input of temperature in Fahrenheit from the user and must be before we define our equations
      read(*,*) tmpf


*This line defines our conversion equation from Fahrenheit to Celsius
      tmpc=(5.0/9.0)*(tmpf-32)
*This line defines our conversion equation from Fahrenheit to Kelvin
      tmpk=tmpc+273.15

*This line states the input temperature in degrees Fahrenheit
      print *, "The temperature received in degrees Fahrenheit was: ",tmpf

*This line prints output to the screen of the temperature converted to Celsius
      print *, "The temperature in degrees Celsius is: ",tmpc


*This line prints output to the screen of the temperature converted to Kelvin
      print *, "The temperature in Kelvin is: ",tmpk
   

      end

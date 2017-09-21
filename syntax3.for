      PROGRAM syntax3

********************************************************
*By: Michael Sessa
*Date: 9/1/17
*
*This program will choose an apporpriate model
*run (00,06,12,18 UTC) based on a given current time
*
*I have neither given or received, nor have I tolerated
*others' use of unauthorized aid
*-Michael Sessa
********************************************************

*This tells the program to not automatically declare any implicit type variables
      implicit none

*States our variable as an integer
      INTEGER UTC

*Prints output to the screen that asks the user to input the current time in UTC
      PRINT *, "Please input the current time in UTC between 0000 UTC and 2359 UTC:"

*Tells the program to expect an input of the current time in UTC
      read(*,*) UTC


*If, else if, and else statements which tell the program to determine what the current model run is
*An .AND. statement was used to tell the program which times the current UTC time must fall between
*When one of the statments is true, the program will print output to the screen of the current model time
      IF (UTC.gt.0300.and.UTC.lt.0859) then
         PRINT *, "The current model run is 00 UTC."
      else if (UTC.gt.0900.and.UTC.lt.1459) then
         PRINT *, "The current model run is 06 UTC."
      else if (UTC.gt.1500.and.UTC.lt.2059) then
         PRINT *, "The current model run is 12 UTC."
      else
         PRINT *, "The current model run is 18 UTC."
      endif
      end

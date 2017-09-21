      PROGRAM syntax5

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c By: Michael Sessa
c Date: 9/8/17
c
c This program generates a random number between 0 and 1000 and subtracts 5 from that
c number until it is less than zero
c
c I have neither given or received, nor have I tolerated others' use of unauthorized aid
c -Michael Sessa
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      real rvalue
      integer nvalue, subtractions

c Start random number generator with computer time
      rvalue1 = rand(time())

c Select random number, make integer between 0 and 1000
      nvalue = 1000*rand(0)

c Print random number value
      print *, "The starting value is:", nvalue

c States subtractions to be initially equal to 1 so that the DO WHILE statement will compute the number of subtractions it took for the intial value to be less than 0
      subtractions=1

c DO WHILE statement that will subtract five from the initial number until it is less than 0.
c DO WHILE statement will also add the number of subtractions together
      do while (nvalue .gt. 0)
          print *, nvalue
          nvalue=nvalue-5
          subtractions=subtractions+1
      end do

c Prints output of the number of subtractions the DO WHILE statement completed to make the initla value less than 0.
      print *, "The number of subtractions was", subtractions


      END

# Principles-of-Programming-Languages-Homework-2
A set of five homeworks in Haskell for the class Principles of Programming Languages.

HW 1.1 is a function myinternet x xs where x is the amount of mb's a customer has every month for internet and xs is a list of integers
tha represent how many of those the customer has used each month. The function returns how many mbs will the customer have available
the N+1 month since we know the consupmtion of the last N months. For example myinternet 10 [4,6,2] would return 28 since the first month
4 mbs were used so the rest 6 were transfered to the second month. In the second month, of the available 16 mbs 6 were used and 10 were
transfered to the next month. In the third month, there were 20 available, 2 were spent and 18 transfered. So for the fourth month there
should be 28 available.

HW 1.2 is a function pinkballoons xs where xs is a list of integers representing thei heights that some baloons are. The return value
of the function is the amount of arrows needed to "break" all of the ballons if someone is "shooting" from the left side of the list
and considering that each time an arrow "breaks" a ballon loses one level of its height. For example
pinkballoons [2,1,5,4,3] would return 2 since with one arrow the first two ballons would "break" and with one more the ones in positions
3,4 and 5 would "break".

HW 1.3 is a function stringroot xs where xs is a string. This function has to determine and return the root of this string, knowing that this string
has being created by appending some anagrams of that root string. For examaple stringroot "aaaa" = "a" and stringroot "bbabab" = "bba".

HW 1.4 is a function mymatrix n which takes as input an integer n>2 and returns a matrix fullfilling the following specifications.
1) The arithmetic average of each row is a number that exists in this row
2) The arithmetic average of each column is a number that exists in this column
3) Every integer can exist only once in the matrix For example mymatrix 3 should return [[1,2,3],[4,5,6],[7,8,9]]

HW 1.5 is a function myseat ls where ls is a string that indicates the set-up of the seats in a train that has only one row of seats and
returns in M the optimal seat the customer should choose. The optimal is defined as: A good seat is defined as one that has either in
front of it or in the back an empty seat. The best seats are the first and the last since they will always be good seats. If both of
those are empty the customer would choose to go to the last (the far most right). If neither of those are empty the customer chooses
to seat to the one that will remain for the most time "good". Every new passenger entrying the train has the same logic so we as the
first passenger have to choose optimally when we enter the train having this strategy in mind. For example in myseat
"eeoee" would return 4 since both the first and the last are empty, we choose the last.


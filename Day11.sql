#Basic Select
#Employee names

Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

Input Format
************

The Employee table containing employee data for a company is described as follows:

Column       Type
*******      ****
emp_id       integer
name         String
months       integer
salary       integer

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, 
and salary is their monthly salary.

SQL Query
*********
SELECT name FROM EMPLOYEE ORDER BY name;

Input
*****
emp_id     name     months    salary
******     ****    *******    ******
12234      David    15         19968
23456      Amy      23         23009
32145      Lillian  12         13456

.         .          .         .
.         .          .         .
.         .          .         .
Output
******
Alan 
Amy 
Andrew 
Andrew 
Angela 
Ann 
Anna 
Anthony 
Antonio 
Benjamin 
Bonnie 
Brandon 
Brandon 
Brian 
Carol 
Charles 
Christina 
Christina 
Christine 
Christine 
David 
David 
David 
Debra 
Diana 
Diana 
Donna 
Dorothy 
Dorothy 
Dorothy 
Earl 
Elizabeth 
Emily 
Evelyn 
Evelyn 
Frank 
Gerald 
Gloria 
Gregory 
Harry 
Jacqueline 
James 
James 
Jean 
Jennifer 
Jesse 
Jesse 
Joe 
Joe 
John 
John 
Jonathan 
Joseph 
Joyce 
Joyce 
Julia 
Keith 
Kelly 
Kevin 
Kimberly 
Kimberly 
Lawrence 
Lillian 
Linda 
Lisa 
Lori 
Louise 
Maria 
Marilyn 
Marilyn 
Marilyn 
Martha 
Martin 
Matthew 
Melissa 
Michael 
Michelle 
Nancy 
Norma 
Pamela 
Patricia 
Patrick 
Paul 
Paul 
Paula 
Paula 
Phillip 
Ralph 
Robert 
Robin 
Robin 
Rose 
Roy 
Stephanie 
Tammy 
Timothy 
Todd 
Victor 
Walter 
Willie

teacher(anders,yoana).
male(anders).
teacher(anders,manish).
teacher(anders,ivan).
teacher(helge,yoana).
teacher(helge,manish).
teacher(helge,fifi).
teacher(helge,gosho).
teacher(tina,yoana).
teacher(tina,manish).


class(anders,discrete_math).
class(helge,business_intelligence).
class(tine,system_intelligence).

room(discrete_math,101).
room(javascript_shit,101).
room(business_intelligence,103).
room(system_intelligence,102).

timeClass(discrete_math,thursday_12_30).
timeClass(business_intelligence,thusday_8_30).
timeClass(system_intelligence,monday_12_30).


hasClass(Y,Z):- teacher(X,Y),class(X,Z).

timeTable(Y,Z,B):-teacher(X,Y),class(X,Z),room(Z,A),timeClass(Z,B).

allClassInARoom(Z,A):- room(Z,A).

classInfoStudents(Y,B,X):- timeClass(Z,B),class(X,Z),teacher(X,Y).

read_studentName(Y) :-
  write('please type name of student :'),
  nl,
  read(Y),
  nl,
  hasClass(Y,Z),nl,
  write(Z).
  
 















 
% Constraint Logic Programming
:- use_module(library(dif)).		% Sound inequality
:- use_module(library(clpfd)).		% Finite domain constraints
:- use_module(library(clpb)).		% Boolean constraints
:- use_module(library(chr)).		% Constraint Handling Rules
:- use_module(library(when)).		% Coroutining

king(martin).
male(martin).
male(john).
male(robbert).
male(jeffrey).
male(tim).
male(nick).
male(tim).
male(tom).
female(fiona).
female(mary).
female(ana).

female(peter).

% Martin's kids
child(john,martin).
child(fiona,martin).
child(robbert,martin).

child(mary,john).
child(jeffrey,john).
child(tim,john).

child(nick,fiona).
child(ana,fiona).

child(peter,ana).

child(tom,robbert).

% Order of children
older(john,fiona).
older(fiona,robbert).

older(mary,jeffrey).
older(jeffrey,tim).

older(nick,ana).

ancestors(Person, Ancestors) :- child(Person, Ancestors).
ancestors(Person, Ancestors) :- child(Person, Somebody), ancestors(Somebody, Ancestors).

sons(Person,Sons) :- (male(Sons),child(Sons,Person)).
brothers(Person,Brothers) :-  male(Brothers),child(Brothers,Somebody),child(Person,Somebody), Person \= Brothers.
elderBrothers(Person,ElderBrothers):- brothers(Person,ElderBrothers), (older(ElderBrothers,Person);older(ElderBrothers,_)).


becomeKing(NewKing,PeopleToDie) :- \+ king(NewKing), king(PeopleToDie).
becomeKing(NewKing,PeopleToDie) :- elderBrothers(NewKing,PeopleToDie).
becomeKing(NewKing,PeopleToDie) :- child(NewKing,PeopleToDie).
becomeKing(NewKing,PeopleToDie) :- child(NewKing,Parents),elderBrothers(Parents, PeopleToDie).
becomeKing(NewKing,PeopleToDie) :- ancestors(NewKing,PeopleToDie).
becomeKing(NewKing,PeopleToDie) :- ancestors(NewKing,Ancestors),elderBrothers(Ancestors,PeopleToDie).
becomeKing(NewKing,PeopleToDie) :- ancestors(NewKing,Ancestors),elderBrothers(Ancestors,AncestorelderBrothers),sons(AncestorelderBrothers,PeopleToDie).

becomeKing(NewKing,PeopleToDie) :- male(NewKing),child(NewKing,PeopleToDie),king(PeopleToDie).
becomeKing(NewKing,PeopleToDie) :- male(NewKing),child(Father,King),king(King),child(NewKing,Father),brothers(Father,PeopleToDie).
becomeKing(NewKing,PeopleToDie) :- male(NewKing),child(PeopleToDie,King),king(King),child(NewKing,PeopleToDie).

becomeKing(NewKing,PeopleToDie) :- female(NewKing),brothers(NewKing,PeopleToDie).
becomeKing(NewKing,PeopleToDie) :- female(NewKing),child(NewKing,PeopleToDie),king(PeopleToDie);(female(NewKing),brothers(NewKing,PeopleToDie),child(NewKing,martin)).
becomeKing(NewKing,PeopleToDie) :- female(NewKing),brothers(NewKing,PeopleToDie),child(NewKing,martin).
becomeKing(NewKing,PeopleToDie) :- female(NewKing),child(NewKing,PeopleToDie),king(PeopleToDie).
becomeKing(NewKing,PeopleToDie) :- female(NewKing),brothers(NewKing,Brothers),child(NewKing,martin),sons(Brothers,PeopleToDie).
becomeKing(NewKing,PeopleToDie) :- female(NewKing),child(NewKing,Parent),brothers(Parent,Brothers),child(Brothers,PeopleToDie).
becomeKing(NewKing,PeopleToDie) :- female(NewKing),ancestors(NewKing,Ancestors),brothers(Ancestors,PeopleToDie).
becomeKing(NewKing,PeopleToDie) :- female(NewKing),ancestors(NewKing,Ancestors),brothers(Ancestors,AncestorBrothers),child(PeopleToDie,AncestorBrothers).

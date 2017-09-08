female(bryana).
female(mandy).
female(yolanda).
female(ruth).
female(charmane).
female(jill).
female(jamie).

male(joel).
male(jeremy).
male(henry).
male(paul).
male(dare).

parentOf(joel, bryana).
parentOf(yolanda, bryana).

parentOf(joel, mandy).
parentOf(joel, jeremy).

parentOf(henry, yolanda).
parentOf(ruth, yolanda).
parentOf(henry, paul).
parentOf(ruth, paul).

parentOf(dare, joel).
parentOf(charmane, joel).
parentOf(dare, jill).
parentOf(charmane, jill).
parentOf(dare, jamie).
parentOf(charmane, jamie).

siblingOf(Sibling, Who) :- dif(Sibling, Who), parentOf(Parent, Sibling), parentOf(Parent, Who).
brotherOf(Brother, Who) :- male(Brother), siblingOf(Brother, Who).
sisterOf(Sister, Who) :- female(Sister), siblingOf(Sister, Who).
fatherOf(Father, Who) :- male(Father), parentOf(Father, Who).
motherOf(Mother, Who) :- female(Mother), parentOf(Mother, Who).
grandmotherOf(Grandmother, Who) :- female(Grandmother), parentOf(Grandmother, Parent), parentOf(Parent, Who).
grandfatherOf(Grandfather, Who) :- male(Grandfather), parentOf(Grandfather, Parent), parentOf(Parent, Who).
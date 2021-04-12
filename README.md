# csi2532_playground

Younes Anys
Numero d'etudiant : 300145843

## Laboratoire 9
Soumission au laboratoire 9.

## Partie 1
### Q1a
a) AB b) 3NF mais pas BNCF
### Q1b
a) A b) 3NF et BNCF
### Q1c
a) B b) 3NF et BNCF
### Q1d
a) ABC b) Ni 3NF ou BNCF
### Q1e
a) AB b) 3NF et BNCF

## Partie 2
### Q2a
(AB)+ = AB
 = ABC
 = ABCD
 = ABCDE
 = ABCDEF
Ainsi, AB -> D est valide.
### Q2b
(A)+ = A
Ainsi, A -> C n'est pas valide.
### Q2c
(B)+ = B
Ainsi, B -> C n'est pas valide.
### Q2d
Selon Q2b et Q2c, ni A -> C ou B -> C est valide.

## Partie 3
### Q3
On peut combiner B -> A et D -> A.
On obtient:
Fc = {
    BD -> A,
    AB -> D
}

## Partie 4
### Q4
Fermetures:
* (A)+ = DEA
* (B)+ = B
* (C)+ = C
* (D)+ = D
* (E)+ = E
* (F)+ = ADHF
* (G)+ = G
* (H)+ = H
* (ABH)+ = DEABHC
* (BGH)+ = FBGH
* (BH)+ = GEBH

Clés candidates : ABH, BGH
Vérification : 
* ABH -> C
ABH est une clé candidate. 

* A -> DE
A est contenu dans ABH. 

* BGH -> F
BGH est une clé candidate.

* F -> ADH
F n'est pas une clé candidate. 
(ADHF) (BCEG)
Les clés candidates sont toujours ABH et BGH. 

* BH -> GE
BH est contenu dans ABH et BGH.


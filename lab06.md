#  Lab06

## Sommaire

| Sommaire | Valeur |
| --- | --- |
| Cours | CSI 2532 |
| Session | Hiver 2021 |
| Professeur | Andrew Forward |
| Equipe | Younes Anys (300145843) |

## 1. Lister les name et birthplace de tous les artists

``` sql 
SELECT name, birthplace
FROM artists;
```

The output is:

```
   name     |  birthplace
--------------+---------------
 Caravaggio   | Milan
 Picasso      | Malaga
 Leonardo     | Florence
 Michelangelo | Arezzo
 Josefa       | Seville
 Hans Hofmann | Weisenburg
 John         | San Francisco
(7 rows)
```

## 2. Lister le title et le price de toutes les artworks après 1600.

``` sql
SELECT title, price 
FROM artworks 
WHERE  year >1600;
```

The output is:
```
      title      |  price
-----------------+----------
 Three Musicians | 11000.00
 Blue            | 10000.00
 Waves           |  4000.00
(3 rows)
```
## 3. Lister le title et le type de toutes les artworks qui ont été peintes en 2000 ou peintes par Picasso.

```sql 
SELECT title, type
FROM artworks
WHERE year= 2000 or  artist_name= 'Picasso';
```

The output is:
```
      title      |  type
-----------------+--------
 Three Musicians | Modern
 Blue            | Modern
 Waves           |
(3 rows)
```
## 4. Lister les name et birthplace de tous les artists nés entre 1880 et 1930. (ASTUCE: EXTRACT(YEAR FROM dateofbirth) vous donne l'année à partir d'un attribut DATE)

```sql 
SELECT name, birthplace 
FROM artists,EXTRACT(YEAR FROM dateofbirth) as year 
WHERE year >1880 and year<1930;
```
The output is:

```
  name   |  birthplace
---------+---------------
 Picasso | Malaga
 John    | San Francisco
(2 rows)
```
## 5. Lister les name et le country de naissance de tous les artists dont le style de peinture est Modern, Baroque or Renaissance. (ASTUCE: utilisez le mot-clé IN).

```sql 
SELECT name, country 
FROM artists
WHERE name IN ( SELECT artist_name From artworks WHERE  type='Modern' OR type='Baroque' OR type='Renaissance');
```

The output is:
```
    name    | country
------------+---------
 Caravaggio |
 Picasso    |
 Smith      |
(3 rows)
```

## 6. Lister tous les détails des artworks dans la base de données, triés par title.

``` sql
SELECT *
FROM artworks
ORDER BY title;
```

The output is:
```      title      | year |  type   |  price   | artist_name
-----------------+------+---------+----------+-------------
 Blue            | 2000 | Modern  | 10000.00 | Smith
 The Cardsharps  | 1594 | Baroque | 40000.00 | Caravaggio
 Three Musicians | 1921 | Modern  | 11000.00 | Picasso
 Waves           | 2000 |         |  4000.00 | Smith
(4 rows)
```

## 7.Lister les name et les customer ids de tous les customers qui aiment Picasso.

```sql 
SELECT id,name 
FROM customers
WHERE id IN (SELECT customer_id FROM likeartists WHERE artist_name='Picasso');
```

The output is:
```
 id | name
----+-------
  4 | Emre
  5 | Saeid
(2 rows)
```

## 8.Lister les name de tous les customers qui aiment les artistes de style Renaissance et dont le price est supérieur à 30000.

```sql
SELECT name
FROM customers
WHERE id IN ( SELECT customer_id FROM likeartists WHERE artist_name IN (SELECT artist_name FROM artworks WHERE type='Renaissance' and price > 30000));
```

There is no customer who likes artists with style Renaissance and whose price is greater than 30000 in our database.

```
 name
------
(0 rows)

```

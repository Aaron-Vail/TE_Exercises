-- Write queries to return the following:
-- The following changes are applied to the "pagila" database.**

-- 1. Add actors, Hampton Avenue, and Lisa Byway to the actor table.
SELECT first_name, last_name, actor_id
FROM actor 
ORDER BY actor_id;

BEGIN TRANSACTION;

INSERT INTO actor (first_name, last_name, actor_id) VALUES ('HAMPTON', 'AVENUE', 201);
INSERT INTO actor (first_name, last_name, actor_id) VALUES ('LISA', 'BYWAY', 202);

COMMIT;

ROLLBACK;
-- 2. Add "Euclidean PI", "The epic story of Euclid as a pizza delivery boy in 
-- ancient Greece", to the film table. The movie was released in 2008 in English. 
-- Since its an epic, the run length is 3hrs and 18mins. There are no special 
-- features, the film speaks for itself, and doesn't need any gimmicks.	

BEGIN TRANSACTION;

INSERT INTO film (film_id, title, description, language_id, rental_duration, rental_rate, replacement_cost, release_year) 
VALUES ( (SELECT MAX(film_id)+1 film_id FROM film), 'Euclidean PI', 
'"The epic story of Euclid as a pizza delivery boy in ancient Greece"', (SELECT language_id FROM language WHERE name = 'English'), 6, 0.99, 20.99, 2008);


COMMIT;

ROLLBACK;

-- 3. Hampton Avenue plays Euclid, while Lisa Byway plays his slightly 
-- overprotective mother, in the film, "Euclidean PI". Add them to the film.

BEGIN TRANSACTION;

INSERT INTO film_actor (actor_id, film_id)
VALUES ((SELECT actor_id FROM actor WHERE first_name = 'HAMPTON' AND last_name = 'AVENUE'), (SELECT film_id FROM film WHERE title = 'Euclidean PI' limit 1));

INSERT INTO film_actor (actor_id, film_id)
VALUES ((SELECT actor_id FROM actor WHERE first_name = 'Lisa' AND last_name = 'Byway'), (SELECT film_id FROM film WHERE title = 'Euclidean PI' limit 1));

COMMIT;

ROLLBACK;

-- 4. Add Mathmagical to the category table.
SELECT *
FROM category;

BEGIN TRANSACTION;

INSERT INTO category (name)
VALUES 'Mathmagical';

COMMIT;

ROLLBACK;
-- 5. Assign the Mathmagical category to the following films, "Euclidean PI", 
-- "EGG IGBY", "KARATE MOON", "RANDOM GO", and "YOUNG LANGUAGE"
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = (SELECT category_id FROM category WHERE name = 'Mathmagical'));

BEGIN TRANSACTION;

INSERT INTO film_category (film_id, category_id)
VALUES ((SELECT film_id FROM film WHERE title = 'Euclidean PI'), (SELECT category_id FROM category WHERE name = 'Mathmagical'));
INSERT INTO film_category (film_id, category_id)
VALUES ((SELECT film_id FROM film WHERE title = 'EGG IGBY'), (SELECT category_id FROM category WHERE name = 'Mathmagical'));
INSERT INTO film_category (film_id, category_id)
VALUES ((SELECT film_id FROM film WHERE title = 'KARATE MOON'), (SELECT category_id FROM category WHERE name = 'Mathmagical'));
INSERT INTO film_category (film_id, category_id)
VALUES ((SELECT film_id FROM film WHERE title = 'RANDOM GO'), (SELECT category_id FROM category WHERE name = 'Mathmagical'));
INSERT INTO film_category (film_id, category_id)
VALUES ((SELECT film_id FROM film WHERE title = 'YOUNG LANGUAGE'), (SELECT category_id FROM category WHERE name = 'Mathmagical'));

COMMIT;

ROLLBACK;
-- 6. Mathmagical films always have a "G" rating, adjust all Mathmagical films 
-- accordingly.
-- (5 rows affected)
SELECT * 
FROM film 
WHERE film_id IN (SELECT film_id FROM film_category 
WHERE category_id = (SELECT category_id FROM category WHERE name = 'Mathmagical'));

BEGIN TRANSACTION;

UPDATE film SET rating = 'G'
WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = (SELECT category_id FROM category WHERE name = 'Mathmagical'));

COMMIT;

ROLLBACK;

-- 7. Add a copy of "Euclidean PI" to all the stores.
SELECT *
FROM inventory
WHERE film_id = 1001;

BEGIN TRANSACTION;

INSERT INTO inventory (film_id, store_id) 
VALUES ((SELECT film_id FROM film WHERE title = 'Euclidean PI'), 1);

INSERT INTO inventory (film_id, store_id) 
VALUES ((SELECT film_id FROM film WHERE title = 'Euclidean PI'), 2);

COMMIT;

ROLLBACK;

-- 8. The Feds have stepped in and have impounded all copies of the pirated film, 
-- "Euclidean PI". The film has been seized from all stores, and needs to be 
-- deleted from the film table. Delete "Euclidean PI" from the film table. 
-- (Did it succeed? Why?)
SELECT * FROM film WHERE title = 'Euclidean PI';

BEGIN TRANSACTION;

DELETE FROM film WHERE title = 'Euclidean PI';

COMMIT;

ROLLBACK;
--No update or delete on table "film" violates foreign key constraint "film_actor_film_id_fkey" on table "film_actor"


-- 9. Delete Mathmagical from the category table. 
-- (Did it succeed? Why?)
SELECT * FROM film_category WHERE category_id = 17;

BEGIN TRANSACTION;

DELETE FROM category WHERE name = 'Mathmagical';

COMMIT;

ROLLBACK;
-- no update or delete on table "category" violates foreign key constraint "film_category_category_id_fkey" on table "film_category"


-- 10. Delete all links to Mathmagical in the film_category table. 
-- (Did it succeed? Why?)
SELECT * FROM film_category WHERE category_id = 17;

BEGIN TRANSACTION;

DELETE FROM film_category WHERE category_id = 17;

COMMIT;

ROLLBACK;

--It worked because the one to one relationship dissolved without one of the parts.

-- 11. Retry deleting Mathmagical from the category table, followed by retrying
-- to delete "Euclidean PI". 
-- (Did either deletes succeed? Why?)
SELECT * FROM film_category WHERE category_id = 17;

BEGIN TRANSACTION;

DELETE FROM category WHERE name = 'Mathmagical';
-- able to delete mathmagical because no table is referencing the key.
DELETE FROM film WHERE title = 'Euclidean PI';
--not able to delete euclidean pi bbecause it violates the foreign key constraint.
COMMIT;

ROLLBACK;

-- 12. Check database metadata to determine all constraints of the film id, and 
-- describe any remaining adjustments needed before the film "Euclidean PI" can 
-- be removed from the film table.


--Delete film_id from film_actor, film_category and inventory.  


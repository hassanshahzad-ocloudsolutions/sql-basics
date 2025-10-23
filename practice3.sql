-- JSONB (JAVASCRIPT OBJECT NOTATION BINARY) COLUMN USE TO STORE JSON DATA.

/*SELECT'{
"Name":"Hassan Shahzad",
"Hobbies": ["Gardening", "Gym", "Wandering"],
"Address": {"Country":"Pakistan", "City":"Lahore","Town":"Township"} 
}'::json -> 'Name'; -- -> json object*/

/*SELECT'{
"Name":"Hassan Shahzad",
"Hobbies": ["Gardening", "Gym", "Wandering"],
"Address": {"Country":"Pakistan", "City":"Lahore","Town":"Township"} 
}'::json ->> 'Hobbies'; -- ->> string object*/

/*SELECT'{
"Name":"Hassan Shahzad",
"Hobbies": ["Gardening", "Gym", "Wandering"],
"Address": {"Country":"Pakistan", "City":"Lahore","Town":"Township"} 
}'::json -> 'Address' -> 'Country'; */

--JSON -> TEXT -> INTEGER

/*SELECT('{
"Name":"Hassan Shahzad",
"Height" : 169,
"Hobbies": ["Gardening", "Gym", "Wandering"],
"Address": {"Country":"Pakistan", "City":"Lahore","Town":"Township"} 
}'::json ->> 'Height')::int;*/


/*SELECT'{
"Name":"Hassan Shahzad",
"Hobbies": ["Gardening", "Gym", "Wandering"],
"Address": {"Country":"Pakistan", "City":"Lahore","Town":"Township"} 
}'::json -> 'Hobbies' ->> 0;*/


-- CREATE TABLE dummy(id SERIAL PRIMARY KEY, metadata JSONB);

-- SELECT * FROM dummy;

/*INSERT INTO dummy(metadata) VALUES ('{
"Name":"Ali Khan",
"Height" : 169,
"Weight" : 60,
"Hobbies": ["Gardening", "Gym", "Wandering"],
"Address": {"Country":"Pakistan", "City":"Lahore","Town":"Township"} 
}');*/

-- SELECT ('{"a": 1}'::jsonb['a']);


/*SELECT id, metadata ->> 'Name', metadata ->> 'Weight'
FROM dummy
WHERE (metadata->>'Weight')::int <70;*/

/*SELECT id, metadata->> 'Name'
FROM dummy 
WHERE metadata ? 'Weight';*/

/*
SELECT id, metadata->>'Name', metadata->>'Hobbies' AS "Hobbies"
FROM dummy
WHERE metadata-> 'Hobbies' ? 'Gym';*/

/*
SELECT id, metadata->>'Name', metadata-> 'Hobbies'
FROM dummy
WHERE metadata->'Hobbies' ?& '{"Gym"}'; */

/*
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  profile JSONB
);*/

/*
INSERT INTO users (profile) VALUES
('{"name":"Ali", "skills":["SQL","Python","Java"], "age":25}'),
('{"name":"Sara", "skills":["HTML","CSS","JavaScript"], "age":22}'),
('{"name":"Usman", "skills":["Python","C++"], "age":30}'); */

-- SELECT * FROM users;

/*
SELECT id, profile ->> 'name', profile->>'skills'
FROM users 
WHERE profile ? 'skills'; */


/*
SELECT id, profile ->> 'name', profile ->> 'skills'
FROM users
WHERE (profile ->> 'skills')::JSONB ? 'CSS'; */

/*
SELECT profile->>'name', profile ? 'skills' AS "has_skills"
FROM users; */

/*
SELECT id, profile->>'name' FROM
users
WHERE profile ?& '{"name", "skills"}' */


/*
SELECT id, profile->>'name'
FROM users
WHERE profile -> 'skills' ?& '{"Python"}'; */

/*
SELECT id, profile ->> 'name'
FROM users
WHERE profile @> '{"age": 30, "skills": ["Python","C++"]}'; */

/*
SELECT id, profile ->> 'name'
FROM users
WHERE profile @> profile;*/

-- INDEX ON JSONB

-- gin(generalized inverted index)

--CREATE INDEX user_metadata_index on users using gin(profile);

/*
explain analyze SELECT id, profile -> 'name'
FROM users WHERE profile @> '{"name":"Ali"}' */




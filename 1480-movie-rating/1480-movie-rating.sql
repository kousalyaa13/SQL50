# Write your MySQL query statement below
WITH most_rated_user AS (
    SELECT name
    FROM Movies
    JOIN MovieRating USING(movie_id)
    JOIN Users USING(user_id)
    GROUP BY user_id
    ORDER BY COUNT(*) DESC, name ASC
    LIMIT 1
),

highest_rated_movie AS (
    SELECT title
    FROM MovieRating
    JOIN Movies USING (movie_id)
    WHERE created_at BETWEEN "2020-02-01" AND "2020-02-29"
    GROUP BY movie_id
    ORDER BY AVG(rating) DESC, title ASC
    LIMIT 1
)


SELECT name AS results
FROM most_rated_user

UNION ALL

SELECT title AS results
FROM highest_rated_movie

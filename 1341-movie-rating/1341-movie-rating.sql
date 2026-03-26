# Write your MySQL query statement below
(
    SELECT name as results FROM movierating mr
    INNER JOIN users u
    ON mr.user_id = u.user_id
    GROUP BY u.user_id
    ORDER BY COUNT(*) DESC, u.name ASC
    LIMIT 1
)
UNION ALL
(
    SELECT title as results FROM(
    SELECT m.title, AVG(mr.rating) AS avg_rating FROM movierating mr
    INNER JOIN movies m
    ON mr.movie_id = m.movie_id
    WHERE mr.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY m.title
    ORDER BY avg_rating DESC, m.title ASC
    LIMIT 1
    ) AS query2
);
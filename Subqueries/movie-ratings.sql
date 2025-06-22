-- https://leetcode.com/problems/movie-rating/

(SELECT u.name AS results
FROM MovieRating mr
INNER JOIN Users u
ON u.user_id = mr.user_id
GROUP BY mr.user_id
ORDER BY COUNT(mr.user_id) DESC, u.name
LIMIT 1)
UNION ALL (
SELECT m.title
FROM MovieRating mr
INNER JOIN Movies m
ON m.movie_id = mr.movie_id
WHERE 
    MONTH(mr.created_at) = 2
    AND YEAR(mr.created_at) = 2020
GROUP BY m.title
ORDER BY AVG(mr.rating) DESC, m.title
LIMIT 1);
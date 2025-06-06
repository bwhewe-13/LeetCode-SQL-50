-- https://leetcode.com/problems/biggest-single-number/


SELECT MAX(num) AS num
FROM MyNumbers
WHERE num in (SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1);


-- SELECT MAX(num) AS num
-- FROM (SELECT num
--     FROM MyNumbers
--     GROUP BY num
--     HAVING COUNT(*) = 1) a;
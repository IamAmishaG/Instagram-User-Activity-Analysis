# Identify the five oldest users on Instagram from the provided database
SELECT 
    username
FROM
    users
ORDER BY created_at
LIMIT 5;


# Identify users who have never posted a single photo on Instagram
SELECT 
    u.username
FROM
    users u
        LEFT JOIN
    photos p ON u.id = p.user_id
WHERE
    p.id IS NULL;


# Identify user with the most likes on a single photo
SELECT 
    u.username, p.user_id, image_url, COUNT(*) AS likes
FROM
    likes l
        INNER JOIN
    photos p ON l.photo_id = p.id
        INNER JOIN
    users u ON p.user_id = u.id
GROUP BY l.photo_id
ORDER BY likes DESC
LIMIT 1; 


# Identify and suggest the top five most commonly used hashtags on the platform
SELECT 
    t.tag_name AS popular_hashtags, COUNT(*) AS frequency 
FROM
    photo_tags pt
        JOIN
    tags t ON pt.tag_id = t.id
GROUP BY tag_id
ORDER BY frequency DESC
LIMIT 5;


# Determine the day of the week when most users register on Instagram
SELECT 
    COUNT(*) AS active_days, DAYNAME(created_at) AS most_registered_day
FROM
    ig_clone.users
GROUP BY most_registered_day
LIMIT 2;


# Calculate the average number of posts per user on Instagram. Also, provide the total number of photos on Instagram divided by the total number of users
SELECT 
    ROUND((SELECT COUNT(*) FROM photos) / (SELECT COUNT(DISTINCT user_id) from photos),2) AS avg_posts_per_user; 
SELECT 
    (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg_posts; 
    

# Identify potential bots
SELECT 
    COUNT(*) AS total_likes, user_id, u.username, u.created_at
FROM
    likes l
        JOIN
    users u ON l.user_id = u.id
GROUP BY user_id
HAVING total_likes = '257'
ORDER BY l.user_id; 


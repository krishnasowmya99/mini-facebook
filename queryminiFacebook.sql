/*1.Retrieve all pages created by a specific user:*/
SELECT * FROM Pages
INNER JOIN Page_Admins ON Pages.page_id = Page_Admins.page_id
WHERE Page_Admins.user_id = 5;


/*2. Retrieve all groups created by a specific user:*/
SELECT * FROM Groups
INNER JOIN Group_Admins ON Groups.group_id = Group_Admins.group_id     
WHERE Group_Admins.user_id = '10';


/*3. Retrieve all messages between 2 users: */
SELECT * FROM Messages
WHERE (sender_id = '6' AND receiver_id = '1') OR (sender_id = '1' AND receiver_id = '6');

/*4. Total num of posts made by a user:*/
SELECT COUNT(*) as TotalPosts
FROM Posts
WHERE user_id = '6';

/*5.Retrieves all posts made by a certain user after a certain date:*/
SELECT p.post_id, p.content, p.post_date, u.name
FROM Posts p
JOIN Users u ON p.user_id = u.user_id
WHERE p.post_date >= '2007-06-15' AND u.name = 'Lin Yi';

/*6. Finding the number of days the user has been using the FB:*/
SELECT DATEDIFF(day, Users.date_of_birth, GETDATE()) AS days_on_FB
FROM Users
WHERE Users.user_id = '3';

/*7. Fetch all events based on the given start and end dates :*/
SELECT * FROM Events WHERE event_startdate >= '2021-04-19' AND event_enddate <= '2022-11-01';

/*8. Get the post content, name and comment of the user:*/
SELECT 
    Posts.post_id, 
    Posts.content AS post_content, 
    Comments.comment_id, 
    Comments.content AS comment_content,
    Users.name AS user_name
FROM 
    Posts 
    INNER JOIN Comments ON Posts.post_id = Comments.post_id
    INNER JOIN Users ON Posts.user_id = Users.user_id;

/*9. Get the ages of all the users:*/
SELECT user_id, name, DATEDIFF(YEAR, date_of_birth, GETDATE()) AS age
FROM Users;

/*10. Get the most recent notification content for a user:*/
SELECT TOP 1 notif_content 
FROM Notifications 
WHERE user_id = '8'
ORDER BY create_date DESC

/*11.User details based on their country:*/
SELECT * FROM Users WHERE country='USA'
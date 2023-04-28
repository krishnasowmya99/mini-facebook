CREATE TABLE Users (
  user_id INT IDENTITY(1,1) NOT NULL,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  date_of_birth DATE,
  country VARCHAR(50),
  PRIMARY KEY (user_id)
);


CREATE TABLE Groups (
  group_id INT Identity(1,1) NOT NULL ,
  name VARCHAR(50) NOT NULL,
  description TEXT,
  create_date date,
  PRIMARY KEY (group_id)
);

CREATE TABLE Group_Admins (
  group_id INT NOT NULL,
  user_id INT NOT NULL,
  group_name varchar(50) Not Null,
  group_description text ,
  date_created Date,
  PRIMARY KEY (group_id, user_id),
  FOREIGN KEY (group_id) REFERENCES Groups(group_id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE Pages (
  page_id INT identity(1,1) NOT NULL,
  name VARCHAR(50) NOT NULL,
  description TEXT,
  create_date date,
  category text,
  PRIMARY KEY (page_id)
);

CREATE TABLE Page_Admins (
  page_id INT NOT NULL,
  user_id INT NOT NULL,
  page_name varchar(50) not null,
  page_description varchar(50),
  create_date date,
  PRIMARY KEY (page_id, user_id),
  FOREIGN KEY (page_id) REFERENCES Pages(page_id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE Posts (
  post_id INT identity(1,1) NOT NULL,
  user_id INT NOT NULL,
  page_id INT,
  group_id INT,
  content TEXT NOT NULL,
  post_date date,
  privacy_level varchar(20),
  PRIMARY KEY (post_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
  FOREIGN KEY (page_id) REFERENCES Pages(page_id) ON DELETE CASCADE,
  FOREIGN KEY (group_id) REFERENCES Groups(group_id) ON DELETE CASCADE
);

CREATE TABLE Comments (
  comment_id INT IDENTITY(1,1) NOT NULL,
  user_id INT NOT NULL,
  post_id INT NOT NULL,
  content TEXT NOT NULL,
  comment_date DATE,
  PRIMARY KEY (comment_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE NO ACTION,
  FOREIGN KEY (post_id) REFERENCES Posts(post_id) ON DELETE NO ACTION
);


CREATE TABLE Messages (
  message_id INT identity(1,1) NOT NULL ,
  sender_id INT NOT NULL,
  receiver_id INT NOT NULL,
  content TEXT NOT NULL,
  send_date date,
  PRIMARY KEY (message_id),
  FOREIGN KEY (sender_id) REFERENCES Users(user_id) ON DELETE NO ACTION,
  FOREIGN KEY (receiver_id) REFERENCES Users(user_id) ON DELETE NO ACTION

);


CREATE TABLE Notifications (
  notification_id INT identity(1,1) NOT NULL,
  user_id INT NOT NULL,
  notif_content TEXT NOT NULL,
  create_date date,
  PRIMARY KEY (notification_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);


CREATE TABLE Events (
  event_id INT identity(1,1) NOT NULL ,
  user_id INT NOT NULL,
  event_name varchar(50),
  description text,
  event_startdate date,
  event_enddate date,
  name VARCHAR(50));






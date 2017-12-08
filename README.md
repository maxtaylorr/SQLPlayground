  # SQL Playground

  Developed by
  - Sam Burnett
  - Max Taylor
  - Kolbe Weathington
  - Lee Offir
  - Patrick Daniel

This project is a playground for people who are new to SQL and want to mess around with commands without messing up their data. Static data is given to the user which means there is no way the user can delete or destroy our actual data with their test commands. This way a programmer can come practice SQL stress free. With this playground, users have freedom to use any SQL command they want in order to provide the most immersive experience.

---

# Schema

**Customer**

| CustomerID     | FirstName      | LastName      |
| :------------- | :------------- |:------------- |
| 1              | John           | Smith         |
| 2              | Patrick        | Waganar       |
| 3              | Samuel         | Slayer        |
| 4              | Debra          | Ulysses       |
| 5              | Steve          | Madden        |
| 6              | Allison        | Joy           |


**Product**

| ProductID      | GameName       | Developer      | Publisher      | ReleaseYear    | Cost           |
| :------------- | :------------- | :------------- | :------------- | :------------- | :------------- |
| 1              | Counter Strike: Global Offensive | Valve         | Valve  | 2012  | 14.99          |   
| 2              | Rocket League  | Psyonix        | Psyonix        | 2015           | 19.99          |
| 3              | Assassin's Creed: Origins | Ubisoft Montreal| Ubisoft| 2017       | 59.99          |
| 4              | Grand Theft Auto: V | Rockstar North | Rockstar Games | 2015      | 29.99          |
| 5              | Rust           | Facepunch Studios |Facepunch Studios | 2013      | 19.99          |
| 6              | Star Wars: Battlefront II | EA DICE | Electronic Arts  | 2017     | 59.99          | 
| 7              | PLAYERUNKNOWN'S BATTLEGROUNDS | PUBG Corporation | PUBG Corporation | 2017 | 29.99 |
| 8              | Terraria       | Re-Logic       | Re-Logic       | 2011           | 9.99           |
| 9              | Call of Duty: WII | Sledgehammer Games | Activision | 2017        | 59.99          |
| 10             | Team Fortress 2| Valve          | Valve          | 2007           | 0.00           |
| 11             | Fallout 3      | Bethesda Game Studios | Bethesda Softworks | 2009| 9.99           |
| 12             | Left 4 Dead 2  | Valve          | Valve          | 2009           | 9.99           |
| 13             | Miscreated     | Entrada Interactive | Entrada Interactive | 2014 | 19.99          |
| 14             | Mass Effect 2  | Bioware        | EA             | 2010           | 19.99          |
| 15             | Goat Simulator | Coffe Stain Studios | Coffee Stained Studios     | 2014 | 9.99    |
| 16             | Watch Dogs     | Ubisoft        | Ubisoft        | 2014           | 29.99          |
| 17             | Dota           | Valve          | Valve          | 2009           | 0.00           |

**Order**

| OrderID        | CustomerID     | ProductID     | Cost          |
| :------------- | :------------- | :-------------| :-------------|
| 1              | 2              | 12            | 9.99          |
| 2              | 4              | 11            | 9.99          |
| 3              | 3              | 10            | 0.00          |
| 4              | 4              | 9             | 59.99         |
| 5              | 5              | 8             | 9.99          |
| 6              | 6              | 7             | 29.99         |
| 7              | 1              | 6             | 59.99         |
| 8              | 1              | 5             | 19.99         |
| 9              | 2              | 4             | 29.99         |
| 10             | 3              | 3             | 59.99         |
| 11             | 5              | 2             | 19.99         |
| 12             | 6              | 1             | 14.99         |
| 13             | 1              | 1             | 14.99         |
| 14             | 2              | 2             | 19.99         |
| 15             | 4              | 3             | 59.99         |
| 16             | 5              | 4             | 29.99         |
| 17             | 6              | 5             | 19.99         |
| 18             | 4              | 6             | 59.99         |
| 19             | 2              | 7             | 29.99         |
| 20             | 3              | 8             | 9.99          |
| 21             | 1              | 9             | 59.99         |
| 22             | 6              | 10            | 0.00          |
| 23             | 2              | 11            | 9.99          |
| 24             | 4              | 12            | 9.99          |
| 25             | 2              | 13            | 19.99         |
| 26             | 3              | 14            | 19.99         |
| 27             | 5              | 15            | 9.99          |
| 28             | 6              | 16            | 29.99         |
| 29             | 2              | 17            | 0.00          |
| 30             | 5              | 13            | 19.99         |


---

# Entity Relationship Diagram
![alt text](http://www.24gaam.com/education/computer/images/erdiagrm.gif "ERD Diagram")

---

# CRUD Explanation

In this project the user has the ability to create, read, update, and delete with his/her SQL commands depending on what commands are written. The user can create data by using an INSERT INTO command and insert new data into one of the tables. By choosing to do a simple SELECT * statement from any of the above tables, the user will be able to read specific records from the tables. The same can be said for update. The user can choose to update any record by using the UPDATE command in SQL and update any of the records he or she chooses to update. Last but not least, the user has the ability to delete any record
~~or all of the records~~ with the DELETE command. By having the ability to create, read, update, and delete, the user can explore the wonderful world of SQL stress free.

---

# Video Walk Through

[![SQL Playground](https://azure.microsoft.com/svghandler/sql-database/?width=600&height=315)](http://www.youtube.com/watch?v=dQw4w9WgXcQ)

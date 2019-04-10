# Bookmark-Manager

This project will create a web application that will enable a user to store a list of bookmarks of web sites that they visit regularly.

DOMAIN MODEL


Client         Controller                   Model         View

 -----------          ----------     all     ----------
|           |   GET  |          |---------->|          |
|           |------->|          |<----------| Bookmark |
| /bookmarks|        |    app   |[bookmarks]|          |
|           |        |          |            ----------
|           |<-------|          |-------------------->-------------
|           |response|          |     [bookmarks]    |             |
 -----------           ---------- <--------------------|erb bookmarks|
                                         html        |             |
                                                      -------------



#How to create a database
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the "database" using the psql command (\c) bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmmarks_table.sql

#How to create a test database
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE "bookmark_manager_test;"
3. Connect to the "database" using the psql command (\c) bookmark_manager_test;
4. Run the query we have saved in the file 02_create_bookmarks_test_table.sql

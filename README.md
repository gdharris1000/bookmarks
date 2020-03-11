# bookmarks

##User Stories


As a user
So I can access websites more quickly
I want to see a list of my bookmarks

As a user
So I can keep my list of bookmarks useful
I want to be able to add new bookmarks

As user
So I can keep my list of bookmarks useful
I want to be able to delete bookmarks

As user
So I can keep my list of bookmarks useful
I want to be able to update bookmarks

As user
So I can add any additional relevant info
I want to be able to comment on bookmarks

As a user
So I can find bookmarks more easily
I want to be able to tag bookmarks into categories

As a user
So I can find bookmarks more easily
I want to be able to filter bookmarks by tag

As a user
So the list of bookmarks remains personal
Users are restricted to manage only their own bookmarks


##Domain Model Diagram

Client:
User accessing /bookmarks (get request to App)

Controller:
App (respond to get request from Database)

Model:
Bookmark Database (receives request from App, responds to app)

View:
Bookmarks page (sents html to app, receives bookmark data from App)

https://github.com/makersacademy/course/blob/master/bookmark_manager/images/bookmark_manager_1.png




##Database

-db/
&nbsp;&nbsp;&nbsp; -migrations/
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -01_create_bookmarks_table.sql/
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\c bookmark_manager
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -01_create_bookmarks_table_test.sql/
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\c bookmark_manager_test
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

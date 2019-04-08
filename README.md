# Bookmark-Manager

This project will create a web application that will enable a user to store a list of bookmarks of web sites that they visit regularly.

#DOMAIN MODEL


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

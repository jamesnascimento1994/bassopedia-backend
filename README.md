# Bassopedia

An application that shows different bassists and their respective genre of music that they play. Users can click on a genre, then click on a bassist from that genre, see its details.

## Demo

https://www.youtube.com/watch?v=M8s6HRDLdW8&feature=youtu.be

### APIs

Genres: https://floating-chamber-81210.herokuapp.com/genres/

Bassists: https://floating-chamber-81210.herokuapp.com/bassists/

### Component Hierarchy

                                App.js
__________________________________|_____________________________________
                        |           |
                   Bassist.js     Genres.js
                                    |
                                  Genre.js

### Screenshots

Home Page

![Screen Shot 2020-12-11 at 5 32 57 PM](https://user-images.githubusercontent.com/62581000/101961610-12d73300-3bd8-11eb-9aa4-ccf32bcca561.png)

When you click on Genres

![Screen Shot 2020-12-11 at 5 43 31 PM](https://user-images.githubusercontent.com/62581000/101961785-75303380-3bd8-11eb-9f44-bb8a52ea52e0.png)

Code used (Located in App.js)

![Screen Shot 2020-12-11 at 5 53 35 PM](https://user-images.githubusercontent.com/62581000/101962312-d7d5ff00-3bd9-11eb-927c-c654bff5d745.png)

When you click on one of the genres listed

![Screen Shot 2020-12-11 at 5 45 05 PM](https://user-images.githubusercontent.com/62581000/101961898-be808300-3bd8-11eb-97d1-b43b2a368f02.png)

Code used (Located in Genres.js)

![Screen Shot 2020-12-11 at 5 58 35 PM](https://user-images.githubusercontent.com/62581000/101962564-8417e580-3bda-11eb-9797-cb6557ca1f5e.png)

When you click on one of the bassists listed (Located in Genre.js)

![Screen Shot 2020-12-11 at 5 47 23 PM](https://user-images.githubusercontent.com/62581000/101962074-2df67280-3bd9-11eb-9bec-f0b1f14f797e.png)

Code used (Located in Bassist.js)

![Screen Shot 2020-12-11 at 6 00 27 PM](https://user-images.githubusercontent.com/62581000/101962671-c7725400-3bda-11eb-81e2-246474f6bb60.png)

## Technologies Used

### Frontend

Programming Languages: HTML, CSS, and JavaScript

Frameworks/Libraries: React.js, bootstrap.js

### Backend

Programming Language: Python

Framework: Django

Deployed with Heroku

https://bassopedia.herokuapp.com/
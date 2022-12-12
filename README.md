## MVC Film Site

### Description
The focal point of this week's project was marrying the back-end work from last weekend's project with a front-end to provide the user with a direct interface to navigate and manipulate a database by using the four basic operations within JDBC. These operations include CREATE, READ, UPDATE, and DELETE (CRUD). The home page allows the user to search by film id, search films by keyword, add a film to the database, or enter a numeric film id to remove it from the database. Upon searching for a film by numeric id, the user is sent to a results page which details all film info, including the film's actors. There are two buttons towards the bottom of the screen. One allows the user to update any given field within the row, with the exception being film id. The other button returns the user to the home page for further queries. The next search option on our home page is by keyword. Upon entering a search term, the database is parsed and any film which contains the keyword input by the user in either its title or description will return its film data. After once again returning to the home page, the user can choose the option to add a film of their own. All fields must be completed before allowing the user to submit the film entry into the database. This ensures that the database receives a complete entry and that all information meets the criteria of each column within the table. Finally, the user can enter an id of a film they wish to remove from the database permanently. 


### Technologies Used
Java, Eclipse, SQL, Git, GitHub, Atom, MAMP, Maven, Spring MVC, Apache Tomcat

### Lessons Learned
SpringMVCFilmCRUD was an excellent project that pushed us to a better understanding of the relationship between front-end and back-end development. Through the rigorous time commitment required to meet the project deadline, we were able to walk away with greater clarity regarding the roles each file plays in Spring MVC CRUD as well as each step required to build such a project. From start to finish, we added dependencies to our pom.xml file, created the bean class, created the controller class, created the DAO class, provided the entry of controller in the web.xml file, defined the bean in the xml file, created the various Java Server Pages, as well as the additional logic that was required for not only requestmapping, but also in our DAOImpl file methods in order to add, update, and delete films to, in, and from the database.
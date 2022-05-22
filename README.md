![index](https://user-images.githubusercontent.com/38344357/169691811-21237c20-010c-4b6d-b023-1c75c9d027b2.png)
𝘛𝘳𝘢𝘪𝘯𝘪𝘯𝘨 𝘱𝘳𝘰𝘫𝘦𝘤𝘵, 𝘥𝘦𝘷𝘦𝘭𝘰𝘱𝘦𝘥 𝘸𝘪𝘵𝘩 𝘵𝘩𝘦 𝘩𝘦𝘭𝘱 𝘰𝘧 𝘵𝘩𝘦 𝘔𝘢𝘵𝘦 𝘈𝘤𝘢𝘥𝘦𝘮𝘺 𝘢𝘯𝘥 𝘪𝘯 𝘵𝘩𝘦𝘪𝘳 𝘭𝘦𝘴𝘴𝘰𝘯𝘴.

I present to your attention a taxi service project, where all the necessary functionality for developing a full-fledged commercial project, designed on the basis of the best programming techniques (<b>DAO pattern, Authentication filter, Injector</b>), according to the best programming rules (<b>SOLID</b>), and other good practices (<b>init_db.sql</b>, etc)
 
<ul>
    The project can be divided into four parts:
        <ul>
          <li>1 - web part</li>
          <li>2 - database interactions</li>
          <li>3 - service part</li>
          <li>4 - technical part</li>
        </ul>
    </li>
</ul>

<ul>
  <li> Web part </li>
  </ul>
 <ul> - Presented technical class-controllers in web space: IndexController, LogoutController, LoginController </ul>
 <ul> - Class-controllers are presented to interact with <b>"Car"</b> model: AddCarController, AddDriverToCarController, DeleteCarController, GetAllCarsController, GetMyCurrentCarsController </ul>
 <ul> - Class-controllers are presented to interact with <b>"Driver"</b> model: AddDriverController, DeleteDriverController, GetAllDriverController </ul>
 <ul> - Class-controllers are presented to interact with <b>"Manufacturer"</b> model: AddManufacturerController, DeleteManufacturerController, GetAllManufacturerController </ul>
 <ul> - Directory <b>webapp/WEB-INF/views</b> with <b>.jsp</b> files for every controller and his methods</ul>
 
 
 <ul>
  <li> Database interactions</li>
  </ul>
  <ul> - Here, according to the DAO pattern, we create a <b>DAO interface</b> for each model: CarDao, DriverDao, ManufacturerDao, and also GenericDao that extends our DAOs (for more stability) </ul>
  <ul> - And, here <b>implementation</b> for each model and it DAO : CarDaoImpl, DriverDaoImpl, ManufacturerDaoImpl </ul>
  <ul>
  <li> Service part </li>
  </ul>
  <ul> - Package <b>.lib</b> has necessary own annotations (@Dao, @Inject, @Service), and injector with "deep logic"</ul>
  <ul> - Package <b>.model</b> has list of moodels (Car, Driver, Manufacturer) with overridden methods <b>Equals</b> and <b>hashCode</b> to avoid collisions in memory </ul>
   <ul> - Package <b>.service</b> has interfaces and implementations for every model, its a main business logic</ul>
  <ul> - Package <b>.exception</b> own AuthentificationException and DataProcessingException for handling errors and exceptions </ul>
   <ul> - Package <b>.filter</b> to filter tasks, in our case, to filter urls </ul>
  
  <ul>
  <li> Technical part</li>
  </ul>
  <ul> - Package <b>.util</b> with class ConnectionUtil for connect with <b>MySql</b> database</ul>
  <ul> - Package <b>.resources</b> with <b>init_db.sql</b> file with the SQL commands to create the necessary tables in MySql (for other person)</ul>
  <ul> - File checkstyle.xml for correct and clean code</ul>
  <ul> - File <b>pom.xml</b> for necessary imports and dependencies </ul>
  
  <h3>𝗛𝗼𝘄 𝘁𝗼 𝗿𝗲𝗰𝗿𝗲𝗮𝘁𝗲 𝘁𝗵𝗲 𝗽𝗿𝗼𝗷𝗲𝗰𝘁 𝗼𝗻 𝘆𝗼𝘂𝗿 𝗼𝘄𝗻?</h3>
  <ul>
          <li>Fork</li>
          <li>copy reference of a new project</li>
          <li> open Intellij IDEA -> tool bar -> VCS -> Checkout from Version Control -> Git -> insert your url -> click Clone</li>
          <li> connect Tomcat: Edit Configurations... -> click "+" in left corner -> choose the Tomcat Server -> Local -> Fix -> clean Application context -> Apply -> OK</li>
          <li>connect MySql: click "Database" in right corner -> click "+" in left corner -> Data Source -> MySql -> connect to your shema -> copy content from init_db.sql -> create your own SQL-query</li>
          <li>Run Tomcat</li>
          <li>Mazeltov!👏</li>
        </ul>
  
  
  <hr align="center" width="700" size="2" color="#ff0000" />
  
 <p>In a while I'll add tests and Logger to demonstrate my knowledge in this.
 Thank you for your interest =)</p>
  
  
  
  
  
  
  

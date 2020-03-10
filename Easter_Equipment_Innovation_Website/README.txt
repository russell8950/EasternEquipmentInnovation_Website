Author: Russell Dean Rigsbee

Eastern Equipment Innovation Web Application:
Eastern Equipment Innovation is a web application built for Adrian Rigsbee to both display and
sell his products that he sells through a company Hunter Engineering. For this application it runs
a database that holds the products he sells and gives him admin rights to add other products he
wishes to sale on this web page. There are multiple servlets/controllers that are used in this web
application that will be discussed in this user manual for both the owner and future developers
of this web page. The main controllers used for this application is the email servlet, the user
servlet, and the products servlet.

email Servlet:
The email servlet is used for the form page of the application. When the user enters in the three
required fields of this form page it sends a email to the admin of the account (which for testing
purposes it is my student email). The three fields are name, phone number, and email address.
The email address and name field is required for this form but not the phone number because if
the user wants to receive their reply through email the phone number is not required.

User Servlet:
The user servlet is used for holding account credentials such as user name and password. We
use this servlet to show the accounts that have access to editing the database (which is
admin@gmail.com). This controller is also used for creating an account to the webpage and
then the information provided by the user is written to the database where their account
credentials are stored. When the user or admin logs into the application successfully it redirects
them to the shopping page and on the navigation bar shows their signed in user and a link to log
out of their session.

Product Servlet:
The product servlet is the main guts for this webpage because this is what holds all the items
that the admin sells through hunter engineering. When the admin is logged into the user servlet
they are given access to editing the product servlet. For this servlet the admin is given basic
CRUD(create, read, update, delete) functionality. When the admin chooses to add a product to
the database they can fill in the items they want to add to the shopping page. For the image
input they can include a link of a image that is online and the image is displayed in thumbnail
size for them to view the item(100 character limit). The item name is the primary key for this
database because the name can be absolute(but still editable). Item price is a standard double
variable and description is a 200 character long description of the item.
The reading functionality of the product servlet is the shopping page table that shows all items in
the database on the main page. When the admin wants to update any values to this page they
can click the button to edit the item and the same page that was used to create the item will
appear but with all text fields auto filled with the information from the database and they will be
able to change values of the fields and once submit is clicked the changes will immediately
happen and be displayed on the table in the shopping page. If the admin wants to delete an
item they can click the delete item link that is in the table that the specific item that is chosen to
be removed will be dropped from the database table and the new changes will be displayed on
the shopping page table.

Checkout Session:
The checkout page for this web application does not have a cart system because the quantity of
the items that the customer can buy at a time is limited by the admin to one item per transaction.
When the customer clicks the buy item link on the shopping page the user is redirected to the
checkout page where they input the credit card information. Once the information is inputted
and they click submit, the will be redirected to a page that says thank you for your purchase.
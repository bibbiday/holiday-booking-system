######################################################################################
INSTALLATION
######################################################################################
#### Backend
1. Clone the project
2. Go to the project root directory
3. Run `composer install` [if required]
4. Import `laravel_booking.sql` at http://localhost/phpmyadmin/
	- Refer to "DATABASE SETUP (IMPORT IN PHPMYADMIN)"
5. Run `php artisan serve` to start the project at http://localhost:8000

#### Frontend
1. Navigate to `vue` folder using terminal
2. Run `npm install` to install vue.js project dependencies [if required]
3. Start frontend by running `npm run dev` 
4. Open http://localhost:3000


#### Special Thanks
https://youtu.be/WLQDpY7lOLg


######################################################################################
DATABASE SETUP (IMPORT IN PHPMYADMIN)
######################################################################################
1. Visit: http://localhost/phpmyadmin/
2. Create a new Table called "laravel_booking"
3. In the new table, click: 'Import'
4. Choose "laravel_booking.sql" and press 'Go'

- NOTE:
	. Now the database should have 9 Tables
	. Most of these Tables will contain some sample data


######################################################################################
REGISTRATION DETAILS
######################################################################################
1. Visit: http://localhost:3000/
	- This will redirect to Login Page
2. Click "register for free" OR visit: http://localhost:3000/register
	- This will redirect to Register Page
3. There are 2 types of users:
	a. Admin 
	b. Customers (Normal Users)

3a. If you want to be an Admin User:
	- In email, you need to have @admin
	example: haaidhnaseem@admin.com
	- This will redirect to Admin Dashboard once Signed-in

3b. If you want to be an Normal User:
	- In email, you can have anything other than @admin
	example: haaidhnaseem@hotmail.com	
	- This will redirect to User Dashboard once Signed-in



######################################################################################
ADMIN DASHBOARD
######################################################################################
1. In Admin Dashboard, Admin Users can see the summary of packages such as:
	. Latest Package Added
	. Total Packages
	. Total Bookings
	. Total Packages
	. Latest 5 Bookings
		- Click: View All to see the more details of Booked Packages. 

2. Admin Users have another Navigation Link called "Packages".
   In here, Admin Users can:
	. View already listed Packages (If Any)
	. Edit Package
	. Delete Package
	. Add New Package
		- Admin Has to Manually add Itinerary Items such as:
			. Hotel Stays, 
			. Activities, 
			. Transport, etc. 
		- Admin can add multiple itinerarys' other than above.

- NOTE: 
	- Only the admin user that added the package can Edit and Delete that particular Package. 


######################################################################################
NORMAL USER DASHBOARD
######################################################################################
1. In User Dashboard, user can see a list of holiday packages. 

2. Click Book Package:
	a. Enter Your Name:
	b. Enter Your Email:
	c. Choose your Itinerary:
		. Hotel Stays
		. Activities
		. Transport

- NOTE: 
	- Make sure the Signed in Email Address is valid so that you can receive Email Notification. 
	- Make sure to check your "Spam/Junk" Folder Once you have Booked the Package. 


######################################################################################
TESTING EMAILS & PASSWORDS
######################################################################################
1. Admin User:
	- Email: 	haaidhnaseem@admin.com
	- Password:	Password@123


2. Normal User:
	- Email: 	haaidhnaseem@hotmail.com
	- Password:	Password@123	


NOTE:
	- All the other user's in the database's password is 'Password@123'
	- You can set your own password when registering

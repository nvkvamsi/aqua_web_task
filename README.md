step by step procedure

Create Database
its completely build latest laravel version 11+
Create a database named laravel_b.
Run Migrations and Seed Data

Execute the following command to run migrations and seed data:


php artisan migrate:fresh --seed
Alternatively, you can import the given database. (in task folder database is there)
Admin Login

Open your browser and go to http://127.0.0.1:8000/admin/login.
Use the following credentials to log in:
Email: admin@gmail.com
Password: 9848022338
Create Supervisor User

In the admin panel, create a user for the supervisor role.
SMTP Configuration

In the .env file, set the MAIL_MAILER to log:


MAIL_MAILER=log
This will store emails in laravel.log located in the storage directory. If SMTP is configured, emails will be sent; otherwise, they will be logged.
Mail Queue Configuration

Set the queue connection to synchronous by adding the following line in your .env file:


QUEUE_CONNECTION=sync
This ensures that jobs are executed automatically. If not, use the command:


php artisan queue:listen
Career Submission and Email Notification

When a career is submitted, an email will be sent to the creator of the gig.
Build Features

Implement notifications with an alarm sound when a career or contact is created.
Implement multi-user login.
Implement roles and permissions.
Ensure all components are reusable (DRY concept).
Seeder Implementation
implemented export gigs, and import gigs

After running the seeder, create a supervisor and assign the supervisor role.
Checking and Testing

Create a gig using the supervisor account.
Check if the gig is visible in the admin panel.
Approve or reject the gig, which will send an email to the relevant person (currently logged in the laravel.log).
User Application Process

Create a new user account via the UI.
Select a newly created job and click "Apply Now," both with and without logging in.
After logging in, click "Apply Now" again to be redirected to the career submission page.
Write a cover letter and upload a PDF. The file will be stored locally.
Storage Link

If the file is not visible, run the command:


php artisan storage:link
Verification

Verify that both the supervisor and admin can see who submitted the career application.
Ensure that only logged-in users can apply for careers.
Task Completion

Ensure everything is completed as per the task PDF.
Let me know if anything else is required.

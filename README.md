# iLaunch
iLaunch is an all-in-one mock application which simulates a linux based terminal that has a admin sign-in, balance and credits page, settings, and more.



# IDLA Final Documentation
The following information is provided for the convience of operating the program.


I have been working on this project starting in April 2024 since I was interested in learning Batch code as it is an important language to know in the IT world. This programming language is much different than others such as python and java which is why I wanted to do something different.

This program has different features which I will list in the instructions bellow. If there any issues or problems with the program, please email me through my school email.


## Instructions
### Downloading the program
Go up to the green dropdown button and click "Download ZIP". The download will start. Once has been downloaded unzip the file. Make sure NOT to delete the .txt files or the application will not work.

### Running the program
As this is a microsoft batch file, it is considered to be hazardous as it is a "system file". I can asure you that my application is not harmful in any way, though if you would like to check further than you can run the file through https://www.virustotal.com/ . You may also check the file contents through Github. If there are any concerns or questions, email me.

### Program Commands
There are many different "pages" in this application including:
  1. Signin
  2. Logout
  3. Settings (including developer settings)
  4. Norifications creator
  5. Application lockdown
  6. Balance
  7. Credits
  8. Server Control
  9. Help (Beta)
  10. Exit

Please keep in mind that this is a <strong>MOCK APPLICATION</strong>. None of these commands will be processed through 3rd-party applications (with acception to Server Control, which I added for my own convience as I have multiple servers set up for personal use. I have removed the 3rd-party API specifically for this final).

#### display
This command displays the <code>mainInterface</code>.
#### Signin
This creates a one use temproray profile which you can experiment around with the other commands. I have the credientials below.
MYuser:  <code>reala</code>
MYid:    <code>9628</code>
#### Settings
The settings show the current user logged in, date/time, the PC user, and the computer name that is set. Developer settings are enabled for this demonstration.
#### Notification Creator
This function serves really no specific purpose but is a fun extra. In the console enter notifcreate or create_notif. There will be a page that shows up with a mock security message. Again, this is simply to make the terminal realistic.
Enter the notification number at the top of the page. You wil then be prompted to enter a notiofication title. Then promted to enter text related to your title. Once you have entered these two things, you will be asked if you would like to post the notification. Ented the letter Y.
You should see your notification above the console prompt.
#### Application Lockdown
This command locks all commands depending the sub-comand you enter. For example, entering lock.notif will disable the notifcreate command. There are three variations of this command:
  1. lock.signin [Locks signin]
  2. lock.notif [Locks notifcreate]
  3. lock.interface [Disables entire program]




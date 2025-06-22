# Swabit - Habit Tracking Application

We are going to implement a self hostable habit tracking website/pwa. I will start by giving you a brief description and technical requirements, followed by a more detailed requirements section for each feature. You will implement the functionality of this application using the provided descriptions.

## Sections in this document
- Brief description  
- Technical details
- Feature details 
	- Self hostable 
	- Heatmap list 
	- Detailed habit view page 
	- Habit swiping 
	- Configuration  

## Brief description

Swabit is a habit tracking application which users can choose to self host. Users will have the ability to add habits they want to track, which will populate the home screen with a list of github-commit like heatmaps that turn green on days that habit was completed. In the bottom right of the screen there will be a button which opens up a swipe-able card view similar to Tinder, which allows users to swipe left if they did not complete the habit for the day, or swipe right if they did. On each habit card, an optional note/message field.  

## Technical details

- Using react for the client
- a lightweight backend with fastify
- Using shadcn as a component library
- Tailwind
- All important code/logic should be tested 
	- Keep testing suites simple, but effective
- Configured with docker allowing users to pull the image/use a compose to spin up the application easily  

## Stop here - first prompt
We will setup the dependencies/project first and then stop. 

## Feature details

### Self hostable 

- The application will be self hostable with an extendible rest API.  
- There will be basic auth involved for users to create accounts and login.  
- The docker compose should have configuration variables to limit the number of users allowed to create accounts for the instance.  
- Data for each user/habit should be stored in SQLite database with proper schema design for users, habits, and habit completions.
- Database migrations should be handled automatically on application startup.
- SQLite database file should be persisted via Docker volume for data persistence across container restarts.
- Users should not have to reauth between sessions

### Heatmap list 

- The primary page will list habits by heatmaps, filling in days for completed habits 
- Can be clicked to enter a detailed habit view page.  
- If pressing and holding a habit, it can be dragged to change the order of the habit In the list 
- A small button above the list to add a new habit

### Detailed habit view page 

- A settings button which can be used to delete the habit (confirm by retyping habit name), change it's name, or to reset the habit (retype name to confirm), and to change the color of the Heatmap cells to a predefined list of aesthetic colors 
- The Heatmap on this page is preceded by a calendar component which allows users to look at their habit completion through the months 
	- as well as to click on a day to see the habit's note if visible, and delete the habit completion for the day 
	- days without a habit can be clicked on to retroactively add a habit/note 
- The Heatmap will be placed after the calendar 
- A scrollable/expandable list of habit notes will be placed below the heat map

### Habit swiping 

- Initiated from the home page by clicking on a button on the bottom right 
- Swipe through habitat by their appearance in the Heatmap list 
- Add an optional note (click a button to not interrupt swiping with a text field that's enabled by default)
- Disable button once habits for the day have been added

### Configuration 

- a user settings page should be added which allows users to delete their accounts  
- there should be an import/export function for the users's habit data (SQLite backup/restore or CSV export)
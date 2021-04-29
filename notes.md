# Storybook App 

1. What will my app do? 
    - To allow user to tell and share there stories. 
    - Users will be allowed to comment on stories. 

2. What is the user experience?
    - Sign Up or Log In and Log Out.
    - Create Stories, Edit or Delete their stories.
    - Read and Comment on other stories. 

3. What will my models be?
    - User 
        has_many stories 
        has_many comments, through => stories
        - Attributes 
            first_name :string 
            last_name :string 
            user_name "string 
            email :string 
            password :string
    
    - Story
        belongs_to user 
        has_many comments, through => users 
        - Attributes 
            title : string 
            description :text 

    - Comments
        belongs_to user 
        belongs_to story
        - Attributes 
            comments :text 

    - Characters Model (future feature)
        belongs_to user 
        belongs_to story
        - Attributes 
            name :string 
            bio :text 

4. What are all the possible view? 
    - Welcome Page
        -Sign Up or Log In
        - When a user logs out send them to the welcome page
    - Display all the stories in our app
        - Bookshelf 
    - Display the comments for the stories in our app
    - Edit page 
        Edit or Delete there stories
        Edit or Delete comments. 

     
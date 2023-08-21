# Instagram-User-Activity-Analysis 

## Description:
Posing as a data analyst working with Instagram's product team, the project's objective is to derive valuable insights from user interactions and engagement within the Instagram(clone) app. By employing SQL and MySQL Workbench, this project aims to provide data-driven recommendations that can guide the business in its growth strategy. The insights derived from this analysis will not only empower the product team but also serve other departments such as marketing and development in enhancing the overall user experience.

**Data Dictonary:**
The database consists of the following tables and columns:

1. Users Table:
- id: Unique identifier for each user.
- username: The username associated with the user's account.
- created_at: Timestamp indicating when the user's account was created.

2. Photos Table:
- id: Unique identifier for each photo.
- image_url: The URL of the image/photo.
- user_id: The user ID of the user who posted the photo.
- created_at: Timestamp indicating when the photo was posted.

3.Comments Table:
- id: Unique identifier for each comment.
- comment_text: The text content of the comment.
- user_id: The user ID of the user who posted the comment.
- photo_id: The photo ID to which the comment is posted.
- created_at: Timestamp indicating when the comment was posted.

4. Likes Table:
- user_id: The user ID of the user who liked a photo.
- photo_id: The photo ID that the user liked.
- created_at: Timestamp indicating when the like was made.

5. Follows Table:
- follower_id: The user ID of the follower.
- followee_id: The user ID of the followee (user being followed).
- created_at: Timestamp indicating when the follow action was taken.

6. Tags Table:
- id: Unique identifier for each tag.
- tag_name: The name of the tag.
- created_at: Timestamp indicating when the tag was created.

7. Photo_Tags Table:
- photo_id: The photo ID associated with a tag.
- tag_id: The tag ID associated with a photo.


## Project Task:
- Phase 1: Analysis using MySQL 

The project entails a series of tasks that encompass identifying top-performing users, assessing user engagement metrics, optimizing ad campaign timing, and detecting potential bot accounts. These tasks collectively aim to enhance user experiences, enable effective marketing strategies, and ensure a genuine and active user base. Also involves a systematic approach to leveraging data for strategic insights. These tasks range from identifying contest winners based on likes and analyzing user engagement patterns to recognizing the most frequently used hashtags. By addressing both user-centric and business-centric challenges, the project empowers teams to make well-informed decisions and boost the overall success of the platform.

- Phase 2: Dashboard enhancing the key metrics using PowerBI

The Power BI dashboard crafted for this dataset serves as a comprehensive visual representation of the Instagram user analysis. This interactive dashboard provides a holistic view of user engagement and behavior. By data-driven visualizations and dynamic filters, the dashboard caters to specific aspects of the analysis, thus providing a well-rounded perspective on user interactions and trends. 

[Power BI Dashboard](https://www.novypro.com/project/instagram-user-analytics-) *<- Click to navigate*

<kbd>![InstagramUserAnalysisDashboard](https://github.com/IamAmishaG/Instagram-User-Activity-Analysis/assets/132007481/c4981483-eba0-46f5-8682-57ebfd07b4c4)


*Note-
This dataset is from Kaggle.com.
[LINK TO DATASET](https://www.kaggle.com/datasets/heeraldedhia/bike-buyers)*

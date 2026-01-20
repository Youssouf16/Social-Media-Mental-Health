About Dataset
Context
In the digital age, the relationship between social media usage and mental well-being is a critical area of study. With the rise of "doomscrolling" and short-form content (TikTok/Reels), mental health professionals are seeing shifting patterns in anxiety and depression.

This dataset provides a synthetic but scientifically grounded log of user interactions, specifically curated with Binary Gender (Male/Female) demographics to facilitate clear comparative analysis and statistical testing (e.g., T-Tests) regarding gender-specific susceptibility to digital stressors.

Content
The dataset contains 8,000 records representing a diverse range of social media users. It pairs digital behavior logs with standard psychometric scores.

Key features include:
  
  Demographics: Standardized to Male and Female for streamlined A/B analysis.
Usage Metrics: Duration, frequency, and time of day (Late Night vs Regular).
Psychometrics:
  GAD-7 (Generalized Anxiety Disorder): Scores 0-21.
PHQ-9 (Patient Health Questionnaire): Scores 0-27.
Behavioral Triggers: Specific flags for "Social Comparison" (often linked to Instagram/lifestyle content) and "Sleep Displacement".
Methodology
The data was generated using a Behavioral Simulation Engine (Python) that enforces logic based on current psychological literature:
  
  Gender Patterns: Distributed randomly to ensure balanced classes for statistical validity.
The "Envy" Factor: Users consuming "Lifestyle" content on visual platforms have a higher probability of triggering Social_Comparison, impacting anxiety scores.
Circadian Disruption: Late_Night_Usage is programmed to negatively correlate with Sleep_Duration, which serves as a weighted predictor for Depression (PHQ_9).
Columns Descriptor
User_ID: Unique identifier.
Age: User age (18-60).
Gender: Biological sex (Male/Female).
User_Archetype: Persona category (e.g., 'Digital Minimalist', 'Hyper-Connected').
Primary_Platform: The app where the user spends the most time.
Daily_Screen_Time_Hours: Total active screen time per day.
Dominant_Content_Type: Main genre consumed (e.g., Gaming, Lifestyle).
Activity_Type: 'Active' (posting) vs 'Passive' (scrolling).
Late_Night_Usage: 1 if user is active after 12:00 AM, 0 otherwise.
Social_Comparison_Trigger: 1 if content consumed typically induces envy/insecurity.
Sleep_Duration_Hours: Average nightly sleep.
GAD_7_Score: Anxiety score (0-21).
GAD_7_Severity: Categorical interpretation (Minimal to Severe).
PHQ_9_Score: Depression score (0-27).
PHQ_9_Severity: Categorical interpretation (None to Severe).
Inspiration
This dataset is optimized for:
  
  Comparative Statistics: Perform T-Tests to see if there is a significant difference in GAD_7_Score between Males and Females consuming "News/Politics".
Predictive Modeling: Can you predict PHQ_9_Severity based solely on Daily_Screen_Time_Hours and Sleep_Duration?
  Clustering: Segment users into "High Risk" groups based on their usage patterns.
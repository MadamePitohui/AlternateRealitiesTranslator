A/B Test - Colorful Profile + Learning Goals vs Plain Profile
User Story Number: US3 - Profile Page (View/Update Profile)
Metrics (HEART):

Happiness (PRIMARY): % of users who rate the profile or stay on it for at least 10 seconds (profile_positive_time)
Engagement: average time spent on Profile, number of profile edits (profile_edit_start)
Adoption: % of users who add at least one learning goal (goal_add_success)
Guardrail: crash-free sessions; no slower loading time

Hypothesis:
Adding warm colors and a small “My Learning Goals” section will make the Profile feel more inviting and motivate users to personalize it.

Problem & Impact:
The current Profile looks plain, so users spend little time customizing it. A colorful design and visible goals can make users proud of their learning progress, encouraging them to stay active and return to practice.

Experiment Setup (Firebase):

Audience: All signed-in users with Level ≥1.
Split: 50/50; run for 10–14 days.
Remote Config Key: profile_design_variant ∈ {plain,colorful}

Tracking (Analytics):

profile_view { variant }
goal_add_success { variant }
profile_edit_start { variant }
time_on_profile { ms, variant }
profile_positive_time (≥10s viewed)

Variations:

A — Control (Plain):
Default gray/white background
XP and bio only
No learning goals visible

B — Treatment (Warm + Goals):
Soft warm colors (light orange or coral accent)
“My Learning Goals” card below XP section with +Add Goal button
Slight rounded borders and friendly tone

Decision Rule:
Ship the colorful + goals version if it shows higher engagement or more goal adds with no performance issues.


#

David-A/B Test Name
What page to start on? (Home Screen vs. Main Screen)
User Story Number
User Story 4 – Golden Path
Metrics
Happiness (primary) – user satisfaction rating after first session
Secondary: Engagement (time to first action) and Task Success (completion of golden-path action)
Hypothesis
Users who start directly on the Main Screen will be happier and complete tasks faster than those who start on the Home Screen, because it removes an extra step and gets them to the core action sooner.
Problem
Some users are confused about where to begin, which lowers satisfaction and slows completion of the main task.
Experiment
Using Firebase A/B Testing with Remote Config, randomly send:
50% of new users to the Home Screen (control)
50% to the Main Screen (treatment)
Track:
happiness_survey_response (1–5 scale)
time_to_first_action
golden_action_completed
Run the test until enough users participate to compare average happiness and completion rates.
Variations
A: Start on Home Screen → tap “Get Started” → Main Screen
B: Start directly on Main Screen with short tooltip
Success Criteria
If users on the Main Screen show higher happiness and faster task completion, we’ll make it the default starting page.


#

A/B Test Name: Lesson Locks

User Story Number: US4 - Golden Path

Metrics: Retention, Task Success.

Hypothesis: Users are allowed to explore the full body of lessons at their leisure → users will be motivated to keep learning, having gained first-hand experience for what they can build up to.

Problem & Impact: At the start of learning a new skill, there can be a frustrating disconnect between groundwork and final desired skills. It can feel like the small stuff is not worth trying, and the hard stuff requires talent. By fostering curiosity and allowing users to fail above their assigned skill level, they are allowed to explore and find their own learning styles. Experienced first-time users also do not need to prove themselves on placement tests or prior levels before progressing.

Experiment: Randomly assign 50% new users to unlocked lessons (variation), and 50% to locked lesson paths (control) with Firebase Remote Config.

Track: 
- user_XP (unlocked users more or less?) (Task Success), 
- user_level (unlocked users passed any extra milestones?) (Task Success) (Retention), 
- pages_viewed (unlocked users exploring?) (Task Success)

Variations: variant A disables lesson blocks above the user's current level, making the widgets uninteractable. 
variant B lacks all locked-block UI and functionality changes, allowing free movement between all lessons.

See U4 Figmas for unlocked lesson blocks for variant B.

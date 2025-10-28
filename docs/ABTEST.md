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

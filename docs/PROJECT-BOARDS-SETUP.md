# GitHub Project Boards Setup Guide

This guide provides step-by-step instructions for creating and configuring the two organization-level project boards for Philly AI Tech Alliance.

## Prerequisites

- Admin access to the Philly-AI-Tech-Alliance organization
- Familiarity with GitHub Projects (beta)

## Overview

We'll create two project boards:
1. **Roadmap Board** - Track major organizational initiatives and projects
2. **Community Board** - Track community activities, events, and outreach

---

## Project Board 1: Roadmap Board

### Step 1: Create the Project

1. Go to: https://github.com/orgs/Philly-AI-Tech-Alliance/projects
2. Click **New project**
3. Choose **Start from scratch**
4. Configure:
   - **Project name**: Organizational Roadmap
   - **Description**: Track major initiatives, features, and projects across the Philly AI Tech Alliance organization
   - **Visibility**: Public
5. Click **Create project**

### Step 2: Configure Board View

1. In the project, ensure you're on the **Board** view (default)
2. Rename and configure columns:
   - Click the **+ Add column** button to add columns
   - Create these columns in order:

**Column 1: Planned**
- Name: Planned
- Description: Future initiatives being planned or considered
- No item limit

**Column 2: In Progress**
- Name: In Progress
- Description: Active work currently being executed
- No item limit

**Column 3: Completed**
- Name: Completed
- Description: Successfully completed initiatives
- No item limit

**Column 4: On Hold**
- Name: On Hold
- Description: Initiatives temporarily paused
- No item limit

3. Set column order: Planned → In Progress → Completed → On Hold

### Step 3: Add Table View

1. Click **+ New view** at the top
2. Select **Table** layout
3. Name it: "Table View"
4. Configure columns (fields):
   - Title (default)
   - Status (maps to board columns)
   - Assignees
   - Labels
   - Priority (create custom field: Single select with options: High, Medium, Low)
   - Start Date (create custom field: Date)
   - Target Date (create custom field: Date)
   - Workstream (create custom field: Single select with options: Security & IAM, Governance, Infrastructure, Community, Education, Website)
   - Notes (default text field)

### Step 4: Add Roadmap Timeline View

1. Click **+ New view** at the top
2. Select **Roadmap** layout
3. Name it: "Timeline"
4. Configure:
   - Start date field: Start Date
   - Target date field: Target Date
   - Group by: Workstream
5. Adjust zoom level to show 6-12 months

### Step 5: Configure Settings

1. Click project **Settings** (gear icon)
2. Configure:
   - **Visibility**: Public
   - **Description**: Update if needed
   - **README**: Enable and add:

```markdown
# Organizational Roadmap

This project tracks major initiatives and projects across the Philly AI Tech Alliance organization.

## Views

- **Board**: Kanban-style view of initiative status
- **Table**: Detailed view with all metadata
- **Timeline**: Roadmap view showing initiatives over time

## Columns

- **Planned**: Initiatives being planned for the future
- **In Progress**: Currently active work
- **Completed**: Successfully finished initiatives
- **On Hold**: Temporarily paused work

## Using This Board

- All major organizational initiatives should be tracked here
- Link items to GitHub issues, PRs, or discussions
- Update status regularly (at least weekly for active items)
- See [ROADMAP.md](../ROADMAP.md) for detailed initiative descriptions

## Questions?

Ask in GitHub Discussions or reach out to Core Team.
```

3. Save settings

### Step 6: Add Initial Items

Add these initial items to seed the board:

**Item 1**:
- Title: Complete WS4: Community Operations & Engagement
- Status: In Progress
- Priority: High
- Workstream: Community
- Start Date: March 2026
- Target Date: March 2026
- Notes: GitHub Discussions, onboarding docs, project boards

**Item 2**:
- Title: Launch WS6: Website & External Presence
- Status: Planned
- Priority: High
- Workstream: Website
- Start Date: March 2026
- Target Date: April 2026

**Item 3**:
- Title: Develop WS5: Educational Content Architecture
- Status: In Progress
- Priority: High
- Workstream: Education
- Start Date: March 2026
- Target Date: April 2026

**Item 4**:
- Title: First Community Meetup
- Status: Planned
- Priority: Medium
- Workstream: Community
- Target Date: April 2026

---

## Project Board 2: Community Board

### Step 1: Create the Project

1. Go to: https://github.com/orgs/Philly-AI-Tech-Alliance/projects
2. Click **New project**
3. Choose **Start from scratch**
4. Configure:
   - **Project name**: Community Activities
   - **Description**: Track community events, outreach, partnerships, and engagement initiatives
   - **Visibility**: Public
5. Click **Create project**

### Step 2: Configure Board View

1. In the project, ensure you're on the **Board** view (default)
2. Create these columns:

**Column 1: Idea**
- Name: Idea
- Description: Proposed community activities or initiatives
- No item limit

**Column 2: Planning**
- Name: Planning
- Description: Events and activities being actively planned
- No item limit

**Column 3: Active**
- Name: Active
- Description: Currently running or upcoming events/activities
- No item limit

**Column 4: Done**
- Name: Done
- Description: Completed events and activities
- No item limit

3. Set column order: Idea → Planning → Active → Done

### Step 3: Add Table View

1. Click **+ New view** at the top
2. Select **Table** layout
3. Name it: "Table View"
4. Configure columns (fields):
   - Title (default)
   - Status (maps to board columns)
   - Assignees
   - Activity Type (create custom field: Single select with options: Event, Workshop, Meetup, Partnership, Outreach, Content, Social Media, Hackathon, Study Group)
   - Priority (create custom field: Single select with options: High, Medium, Low)
   - Event Date (create custom field: Date)
   - Location (create custom field: Text - e.g., "Virtual", "Philadelphia", specific venue)
   - Expected Attendance (create custom field: Number)
   - Budget (create custom field: Text - e.g., "$0", "$100-500")
   - Notes (default text field)

### Step 4: Add Calendar View (Optional)

1. Click **+ New view**
2. Select **Board** layout
3. Name it: "Calendar"
4. Group by: Event Date
5. Sort by: Event Date (ascending)

### Step 5: Configure Settings

1. Click project **Settings** (gear icon)
2. Configure:
   - **Visibility**: Public
   - **Description**: Update if needed
   - **README**: Enable and add:

```markdown
# Community Activities

This project tracks community events, outreach, partnerships, and engagement initiatives for Philly AI Tech Alliance.

## Views

- **Board**: Kanban-style view of activity status
- **Table**: Detailed view with all metadata including dates, locations, and attendance
- **Calendar**: View activities by event date

## Columns

- **Idea**: Proposed activities waiting for approval or planning
- **Planning**: Events being actively organized
- **Active**: Current or upcoming events (next 30 days)
- **Done**: Completed activities (archived after 90 days)

## Activity Types

- **Event**: Large community gatherings
- **Workshop**: Technical or educational sessions
- **Meetup**: Casual social gatherings
- **Partnership**: Collaborations with other organizations
- **Outreach**: Community growth and awareness activities
- **Content**: Blog posts, videos, podcasts
- **Social Media**: Campaigns and announcements
- **Hackathon**: Coding competitions and challenges
- **Study Group**: Recurring learning sessions

## Using This Board

- Propose new activities by creating items in the "Idea" column
- Move to "Planning" once approved and work begins
- Move to "Active" 30 days before event or when live
- Move to "Done" after completion and add retrospective notes
- Assign owners for each activity
- Update attendance numbers and outcomes after events

## Questions?

Ask in GitHub Discussions (Events category) or reach out to Community team members.
```

3. Save settings

### Step 6: Add Initial Items

Add these initial items to seed the board:

**Item 1**:
- Title: Launch GitHub Discussions Platform
- Status: Active
- Activity Type: Outreach
- Priority: High
- Event Date: March 2026
- Location: Virtual
- Notes: Initial setup and welcome post

**Item 2**:
- Title: First Community Meetup
- Status: Planning
- Activity Type: Meetup
- Priority: High
- Event Date: April 2026
- Location: Philadelphia
- Expected Attendance: 20-30
- Notes: In-person networking and introductions

**Item 3**:
- Title: LinkedIn Presence Launch
- Status: Idea
- Activity Type: Social Media
- Priority: Medium
- Location: Virtual
- Notes: Create and activate company page

**Item 4**:
- Title: AI Fundamentals Workshop Series
- Status: Idea
- Activity Type: Workshop
- Priority: Medium
- Location: Virtual
- Expected Attendance: 50
- Notes: 4-week beginner-friendly workshop series

**Item 5**:
- Title: University Partnership Outreach
- Status: Idea
- Activity Type: Partnership
- Priority: Medium
- Notes: Reach out to Penn, Drexel, Temple CS/AI departments

---

## Post-Setup Tasks

### For Both Boards

1. **Pin the boards**:
   - Go to organization page
   - Pin both projects to make them easily accessible

2. **Share with team**:
   - Announce in GitHub Discussions
   - Share links in Slack (when available)
   - Add links to COMMUNITY.md and README.md

3. **Set up automation** (optional but recommended):
   - Go to project Settings → Workflows
   - Enable auto-add workflows:
     - "Auto-add to project" when issues/PRs are labeled with specific labels
     - "Auto-archive items" when items are closed/merged

4. **Assign owners**:
   - Roadmap Board: Core Team members
   - Community Board: Community team lead + event organizers

### Maintenance

- **Weekly**: Update item statuses, add new items
- **Monthly**: Review completed items, archive old ones, update roadmap
- **Quarterly**: Assess board effectiveness, adjust columns/fields as needed

---

## Using the Project Boards via CLI

For automation or bulk operations, you can use GitHub CLI:

```bash
# List all organization projects
gh project list --owner Philly-AI-Tech-Alliance

# Add an item to a project (requires project number)
gh project item-add PROJECT_NUMBER --owner Philly-AI-Tech-Alliance --url ISSUE_URL

# Update an item's field
gh project item-edit --project-id PROJECT_ID --id ITEM_ID --field-id FIELD_ID --text "New value"
```

Note: Project automation is best done through the web UI for initial setup.

---

## Troubleshooting

### Can't see Projects tab
- Ensure you're an organization member with appropriate permissions
- Check that Projects are enabled in organization settings

### Can't add custom fields
- Ensure you're in the Table view
- Click the **+** button in the column headers
- Select field type and configure

### Items not linking properly
- Use full URLs when adding issues/PRs
- Ensure you have read access to the linked repository

### Views not saving
- Check your browser console for errors
- Try a different browser
- Clear cache and reload

## Support

If you encounter issues:
- Check [GitHub Projects documentation](https://docs.github.com/en/issues/planning-and-tracking-with-projects)
- Ask in #infrastructure Slack channel (when available)
- Open a discussion in Q&A category
- Reach out to Core Team members

---

## Next Steps

After setup:
1. Verify both boards are accessible and functional
2. Add links to boards in key documentation (README, COMMUNITY, etc.)
3. Train team members on how to use the boards
4. Establish update cadence and ownership
5. Integrate boards into team workflows

---

*Last updated: March 2026*

# GitHub Discussions Setup Guide

This guide provides instructions for setting up GitHub Discussions categories and creating the initial welcome post.

## Prerequisites

- GitHub Discussions must be enabled (already done via CLI)
- Admin access to the Philly-AI-Tech-Alliance/.github repository

## Step 1: Access Discussion Categories

1. Go to: https://github.com/Philly-AI-Tech-Alliance/.github/discussions
2. Click the **Settings** (gear icon) near the top right
3. Click **Edit pinned discussions and categories**

## Step 2: Create Discussion Categories

Create the following categories in order:

### 1. Announcements
- **Name**: Announcements
- **Description**: Official announcements from the Core Team and maintainers
- **Format**: Announcement
- **Settings**:
  - ✅ Only maintainers can post
  - ✅ Anyone can comment
  - ✅ Pin this category to the top
- **Emoji**: 📢

### 2. General
- **Name**: General
- **Description**: Welcome posts, introductions, and open discussions about AI and the community
- **Format**: Open Discussion
- **Settings**:
  - ✅ Anyone can post
  - ✅ Anyone can comment
- **Emoji**: 💬

### 3. Q&A
- **Name**: Q&A
- **Description**: Questions about projects, AI topics, or getting started. Mark helpful answers!
- **Format**: Q&A
- **Settings**:
  - ✅ Anyone can post
  - ✅ Anyone can comment
  - ✅ Enable marking answers
- **Emoji**: ❓

### 4. Show & Tell
- **Name**: Show & Tell
- **Description**: Showcase your projects, demos, research, and achievements
- **Format**: Open Discussion
- **Settings**:
  - ✅ Anyone can post
  - ✅ Anyone can comment
- **Emoji**: 🎨

### 5. Events
- **Name**: Events
- **Description**: Upcoming events, meetups, workshops, and hackathons
- **Format**: Open Discussion
- **Settings**:
  - ✅ Anyone can post
  - ✅ Anyone can comment
- **Emoji**: 📅

### 6. Ideas
- **Name**: Ideas
- **Description**: Feature requests, proposals, and RFC discussions for the organization
- **Format**: Open Discussion
- **Settings**:
  - ✅ Anyone can post
  - ✅ Anyone can comment
- **Emoji**: 💡

## Step 3: Create Welcome Post

After categories are created, post the following in the **Announcements** category:

---

**Title**: Welcome to the Philly AI Tech Alliance Community! 🎉

**Body**:

```markdown
# Welcome to Philly AI Tech Alliance! 🎉

We're thrilled to launch GitHub Discussions as our primary community space! This is where we'll share updates, answer questions, brainstorm ideas, and build together.

## What are GitHub Discussions?

GitHub Discussions is a collaborative communication forum. Think of it as a community hub where we can have organized, threaded conversations about all things AI, our projects, and the Philadelphia tech community.

## How to Use Discussions

### 📢 Announcements
Stay updated with official news, releases, and important updates from the Core Team and maintainers. This is read-only for most members, but everyone can comment and ask questions.

### 💬 General
This is our main gathering space! Use this for:
- Introducing yourself to the community
- General discussions about AI and technology
- Getting to know other members
- Anything that doesn't fit other categories

**New members**: Please introduce yourself here! We'd love to hear about your background and interests.

### ❓ Q&A
Have questions? This is the place! Ask about:
- Getting started with our projects
- Technical questions about AI, ML, or our codebases
- How to contribute
- Anything else you're curious about

When someone provides a helpful answer, mark it as the accepted answer to help others find solutions quickly!

### 🎨 Show & Tell
Share what you're working on:
- Your AI projects and experiments
- Research findings or papers
- Cool demos or visualizations
- Learning milestones
- Anything you're proud of!

### 📅 Events
Find out about upcoming:
- Community meetups and social events
- Technical workshops and tutorials
- Hackathons and coding challenges
- Study groups and research discussions
- Office hours with maintainers

### 💡 Ideas
Help shape the future of Philly AI Tech Alliance:
- Propose new features or projects
- Share ideas for initiatives or programs
- Start RFC (Request for Comments) discussions
- Brainstorm with the community

## Community Guidelines

Please remember to:
- ✅ Be welcoming, respectful, and inclusive
- ✅ Stay on topic within each category
- ✅ Search before posting to avoid duplicates
- ✅ Follow our [Code of Conduct](../CODE_OF_CONDUCT.md)
- ✅ Help others and share your knowledge
- ✅ Give constructive feedback

## Getting Started

If you're new to the community:

1. **Introduce yourself** in the General category
2. **Read our guides**:
   - [Onboarding Guide](../docs/ONBOARDING.md)
   - [Contributing Guide](../CONTRIBUTING.md)
   - [Code of Conduct](../CODE_OF_CONDUCT.md)
3. **Explore our repositories** and [project boards](https://github.com/orgs/Philly-AI-Tech-Alliance/projects)
4. **Ask questions** in Q&A - no question is too small!
5. **Find ways to contribute** - check out [good first issues](https://github.com/search?q=org%3APhilly-AI-Tech-Alliance+label%3Agood-first-issue+state%3Aopen&type=issues)

## What's Next?

We have exciting things planned:
- Monthly community meetups (stay tuned for the first one!)
- Technical workshops on AI topics
- Collaborative projects and research initiatives
- Partnerships with local universities and organizations
- And much more!

Check out our [Roadmap](../ROADMAP.md) and [Vision](../VISION.md) to see where we're headed.

## Questions?

If you have questions about Discussions or anything else:
- Post in the Q&A category
- Reach out to any Core Team member
- Check our [FAQ](../docs/faq.md)

## Let's Build Together!

We're excited to have you here. Whether you're a seasoned AI researcher, a software developer, a student, or simply curious about AI - there's a place for you in this community.

Let's build the future of AI technology in Philadelphia together!

**Welcome aboard!** 🚀

---

*The Philly AI Tech Alliance Core Team*

---

**Discussion Settings**:
- ✅ Pin this discussion
- ✅ Lock comments (unlock after posting)
```

---

## Step 4: Configure Discussion Settings

1. In repository settings, go to **Discussions**
2. Configure:
   - ✅ Enable reactions
   - ✅ Enable threaded comments
   - ✅ Allow users to create discussions
3. Save changes

## Step 5: Verification

After setup, verify:
- [ ] All 6 categories are created
- [ ] Announcements is pinned and set to maintainers-only posting
- [ ] Q&A has answer marking enabled
- [ ] Welcome post is created and pinned
- [ ] Discussion settings are configured

## Next Steps

1. Encourage Core Team and maintainers to post in Announcements
2. Start seeding Q&A with common questions and answers
3. Share the Discussions link with the community
4. Monitor and respond to new discussions
5. Welcome new members who introduce themselves

## Support

If you encounter issues during setup:
- Check GitHub's [Discussions documentation](https://docs.github.com/en/discussions)
- Ask in the #infrastructure Slack channel (when available)
- Reach out to Core Team members

---

*Last updated: March 2026*

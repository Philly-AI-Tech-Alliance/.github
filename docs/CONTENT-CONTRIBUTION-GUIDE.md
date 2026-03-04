# Content Contribution Guide

**Philly-AI-Tech-Alliance**
**Version**: 1.0
**Last Updated**: March 2026

## Welcome, Educators!

Thank you for your interest in contributing educational content to the Philly AI Tech Alliance! This guide will walk you through the process of proposing, creating, and publishing high-quality learning resources for our community.

## Quick Start

**New to contributing?** Follow these steps:

1. **Browse existing content** - Familiarize yourself with our style and quality standards
2. **Propose your idea** - Open a discussion in GitHub Discussions
3. **Get feedback** - Community reviews and approves your proposal
4. **Create content** - Follow our quality standards and templates
5. **Submit for review** - Get technical and pedagogical reviews
6. **Publish** - Merge to main and celebrate!

## What We're Looking For

### Content Needs

**High Priority:**
- Hands-on tutorials with working code
- Beginner-friendly introductions
- Real-world project examples
- Workshop materials for meetups
- Industry-specific AI applications
- Practical tool guides

**Always Welcome:**
- Improvements to existing content
- Bug fixes and corrections
- Exercise solutions and examples
- Additional resources and references
- Translation to other languages (future)

**Lower Priority:**
- Purely theoretical content without exercises
- Duplicate of existing high-quality content
- Content requiring expensive resources ($100+)
- Advanced research topics without practical application

### Quality Bar

All content must meet our quality standards:
- **Accurate**: Technically correct and up-to-date
- **Clear**: Understandable by target audience
- **Practical**: Includes hands-on exercises
- **Accessible**: Inclusive language and explanations
- **Complete**: Fully developed, not just outlines
- **Tested**: All code examples work

## Proposing New Content

### Step 1: Open a Discussion

Navigate to [GitHub Discussions](https://github.com/Philly-AI-Tech-Alliance/.github/discussions) and create a new discussion in the **Ideas** category.

### Step 2: Use the Content Proposal Template

```markdown
# [Content Title]

## Content Type
- [ ] Curriculum Repository (multi-module course)
- [ ] Workshop Material (2-4 hour session)
- [ ] Tutorial (standalone guide)
- [ ] Resource List (curated external content)

## Target Audience
- [ ] Complete Beginner (no AI/ML experience)
- [ ] Beginner (basic programming, new to AI/ML)
- [ ] Intermediate (1-2 years ML experience)
- [ ] Advanced (3+ years ML experience)
- [ ] Non-Technical (business leaders, stakeholders)

**Specific audience**: [Who is this for? e.g., "Python developers wanting to learn NLP"]

## Learning Objectives

After completing this content, learners will be able to:
1. [Specific, measurable objective]
2. [Specific, measurable objective]
3. [Specific, measurable objective]

## Prerequisites

**Required:**
- [What learners must know before starting]

**Optional but helpful:**
- [What would make learning easier]

**Suggested preparation:**
- [Links to prerequisite resources]

## Estimated Duration

- **Development time**: [How long to create, in hours]
- **Learning time**: [How long for learner to complete, in hours]
- **Recommended pace**: [e.g., "2 weeks at 5 hours/week"]

## Content Outline

### [Section/Module 1]
- Topic 1.1
- Topic 1.2
- Hands-on exercise

### [Section/Module 2]
- Topic 2.1
- Topic 2.2
- Hands-on exercise

### [Final Project/Exercise]
- Description of capstone or main project

## Unique Value Proposition

**Why create this content?**
- [What gap does it fill?]
- [What makes it different from existing resources?]
- [What value does it provide to learners?]

**Similar existing content:**
- [Resource 1] - How ours differs: [explanation]
- [Resource 2] - How ours differs: [explanation]

## Resources Required

**Technical requirements:**
- [ ] Programming language(s)
- [ ] Libraries/frameworks
- [ ] Hardware (GPU needed? Cloud credits?)
- [ ] Software tools
- [ ] Datasets

**Estimated cost for learner**: $[X] (should be $0 or minimal)

## About You

**Your experience** (optional but encouraged):
- Background with this topic
- Teaching/education experience
- Previous content you've created
- Why you're excited about this

**Time commitment**: [Can you commit to creating and maintaining this?]

## Community Input Requested

**Specific feedback wanted:**
- Is this useful for the community?
- Is the scope appropriate?
- Any suggestions for improvement?
- Would you use/take this content?
```

### Step 3: Community Discussion

**What happens next:**
1. Community members comment with feedback (1-2 weeks)
2. You respond and refine the proposal
3. Education Committee reviews major proposals (curricula)
4. Decision: Approved, needs revision, or not aligned with mission

**Approval criteria:**
- Meets community needs
- Aligns with learning paths
- Feasible to create and maintain
- Meets quality standards
- Creator has bandwidth to complete

## Creating Content

### Getting Started

Once approved:

**1. Set up your workspace**

For new repositories:
```bash
# Create repository via GitHub CLI
gh repo create Philly-AI-Tech-Alliance/[repo-name] --public

# Clone and set up structure
cd [repo-name]
mkdir -p modules exercises solutions resources
```

For existing repositories:
```bash
# Clone repository
gh repo clone Philly-AI-Tech-Alliance/[repo-name]

# Create feature branch
git checkout -b feature/[your-content-name]
```

**2. Use templates**

Copy the appropriate template:
- **Curriculum**: See `ai-fundamentals` repository structure
- **Workshop**: Use `workshop-materials` template
- **Tutorial**: See tutorial template in `.github/docs/templates/`

**3. Follow style guide**

See [Content Style Guide](#content-style-guide) below

### Content Structure

#### For Curriculum Repositories

```
curriculum-name/
├── README.md
│   ├── Course title and description
│   ├── Learning objectives
│   ├── Prerequisites
│   ├── Time estimate
│   ├── Module list
│   ├── How to use this course
│   └── How to contribute
│
├── metadata.yml
│   └── Structured metadata (see EDUCATION-STRATEGY.md)
│
├── modules/
│   ├── 01-module-name/
│   │   ├── README.md (module overview)
│   │   ├── lessons/
│   │   │   ├── 01-topic.md
│   │   │   └── 02-topic.md
│   │   ├── code/
│   │   │   └── examples.py
│   │   ├── exercises/
│   │   │   ├── exercise-1.md
│   │   │   └── exercise-2.md
│   │   └── solutions/
│   │       ├── exercise-1-solution.py
│   │       └── exercise-2-solution.py
│   │
│   └── 02-module-name/
│       └── [same structure]
│
├── projects/
│   └── capstone-project.md
│
├── resources/
│   ├── additional-reading.md
│   ├── datasets.md
│   └── tools.md
│
├── CONTRIBUTING.md
├── LICENSE (MIT for code)
└── LICENSE-CONTENT (CC-BY-4.0 for materials)
```

#### For Workshops

```
workshop-name/
├── README.md (workshop overview)
├── slides/ (presentation)
│   └── workshop-slides.pdf
├── code/
│   ├── starter/ (what learners start with)
│   └── complete/ (finished code)
├── exercises/
│   └── hands-on-activity.md
├── resources/
│   └── additional-reading.md
├── setup-instructions.md
├── facilitator-notes.md
└── feedback/
    └── survey-template.md
```

#### For Tutorials

```
tutorial-name/
├── README.md (tutorial overview)
├── tutorial.md (step-by-step guide)
├── code/
│   ├── final/ (complete code)
│   └── checkpoints/ (intermediate steps)
├── data/ (sample datasets)
├── images/ (screenshots, diagrams)
├── requirements.txt
└── LICENSE files
```

### Writing Guidelines

#### Learning Objectives

Write specific, measurable objectives using action verbs:

**Good:**
- "Build a classification model using scikit-learn"
- "Explain the difference between supervised and unsupervised learning"
- "Evaluate model performance using precision, recall, and F1-score"

**Avoid:**
- "Understand machine learning" (too vague)
- "Learn about neural networks" (not measurable)
- "Know Python" (not specific)

**Action verbs to use:**
- Create, Build, Implement, Develop (for skills)
- Explain, Describe, Compare, Analyze (for understanding)
- Apply, Use, Demonstrate (for application)
- Evaluate, Assess, Critique (for critical thinking)

#### Prerequisites

Be explicit about what learners need:

**Technical prerequisites:**
```markdown
**Required:**
- Python programming (functions, classes, loops)
- Pandas basics (read CSV, filter data)
- Basic statistics (mean, median, standard deviation)

**Test your readiness:**
- [ ] Can you write a function in Python?
- [ ] Can you load and filter a CSV with pandas?
- [ ] Do you understand what standard deviation means?

**Don't have prerequisites?** Complete these first:
- [Python for Beginners](link)
- [Pandas Tutorial](link)
```

#### Exercises

Every module should include hands-on exercises:

**Exercise structure:**
```markdown
## Exercise: [Title]

**Objective**: [What you'll practice]

**Estimated time**: [X minutes]

**Difficulty**: [Beginner/Intermediate/Advanced]

### Problem

[Clear description of what to build/solve]

### Requirements

- [ ] Requirement 1
- [ ] Requirement 2
- [ ] Requirement 3

### Starter Code

[Provide template or skeleton code]

### Hints

<details>
<summary>Hint 1: [Topic]</summary>
[Guidance without giving away solution]
</details>

<details>
<summary>Hint 2: [Topic]</summary>
[Additional guidance]
</details>

### Expected Output

[Show what the solution should produce]

### Solution

See `solutions/exercise-name-solution.py`

### Extension Challenges

For extra practice:
- [Advanced variation]
- [Different approach]
```

**Exercise types:**
- **Coding exercises**: Implement algorithms or functions
- **Debugging exercises**: Fix broken code
- **Analysis exercises**: Interpret results or visualizations
- **Design exercises**: Plan system architecture
- **Research exercises**: Explore documentation or papers

#### Code Examples

All code must:
- **Work correctly** (test before committing!)
- **Be well-commented** (explain non-obvious logic)
- **Follow style guides** (PEP 8 for Python, etc.)
- **Include docstrings** (for functions and classes)
- **Show outputs** (include expected results)
- **Handle errors** (at least basic error handling)

**Example:**
```python
"""
Sentiment Analysis Example

This script demonstrates basic sentiment analysis using
the TextBlob library.
"""

from textblob import TextBlob

def analyze_sentiment(text):
    """
    Analyze the sentiment of given text.

    Args:
        text (str): Text to analyze

    Returns:
        dict: Sentiment scores with 'polarity' and 'subjectivity'

    Example:
        >>> analyze_sentiment("I love machine learning!")
        {'polarity': 0.5, 'subjectivity': 0.6}
    """
    blob = TextBlob(text)
    return {
        'polarity': blob.sentiment.polarity,
        'subjectivity': blob.sentiment.subjectivity
    }

# Example usage
if __name__ == "__main__":
    examples = [
        "I love machine learning!",
        "This is terrible.",
        "The weather is okay."
    ]

    for text in examples:
        sentiment = analyze_sentiment(text)
        print(f"Text: {text}")
        print(f"Sentiment: {sentiment}\n")
```

**Output:**
```
Text: I love machine learning!
Sentiment: {'polarity': 0.5, 'subjectivity': 0.6}

Text: This is terrible.
Sentiment: {'polarity': -1.0, 'subjectivity': 1.0}

Text: The weather is okay.
Sentiment: {'polarity': 0.0, 'subjectivity': 0.0}
```

### Content Style Guide

#### Writing Tone

**Do:**
- Be encouraging and supportive
- Use "you" to address the learner directly
- Celebrate progress and achievements
- Acknowledge when things are challenging
- Share your enthusiasm for the topic

**Don't:**
- Assume prior knowledge not listed in prerequisites
- Use intimidating language ("This is obvious...")
- Dismiss difficulties ("This is easy...")
- Use sarcasm or jokes that may not translate
- Gate-keep or create unnecessary barriers

**Examples:**

**Good:**
> "Great job! You've just built your first neural network. This is a significant milestone. Let's explore how to improve its performance."

**Avoid:**
> "Obviously, you should now optimize hyperparameters. This is trivial if you understand gradient descent."

#### Inclusive Language

**Gender-neutral:**
- Use "they/them/their" for singular
- Use role titles, not gendered terms
- Example: "software engineer" not "programmer/programmeress"

**Culturally inclusive:**
- Avoid idioms that don't translate ("hit it out of the park")
- Use international examples, not US-centric only
- Be mindful of holidays and cultural references

**Ability-inclusive:**
- Don't use ableist metaphors ("this is lame", "blind to issues")
- Provide alt text for images
- Consider screen reader compatibility

**Experience-inclusive:**
- Don't assume expensive tools or resources
- Provide free alternatives
- Acknowledge different learning backgrounds

#### Technical Writing

**Structure:**
```markdown
# Lesson Title

## Learning Objectives
[What you'll learn]

## Prerequisites
[What you need to know]

## Introduction
[Why this matters, real-world context]

## Concept 1
[Explanation with example]

### Hands-On Example
[Code or activity]

## Concept 2
[Explanation with example]

### Hands-On Example
[Code or activity]

## Practice Exercise
[Apply what you've learned]

## Summary
[Key takeaways]

## Next Steps
[What to learn next]

## Additional Resources
[Further reading]
```

**Explanations:**
- Start with the "why" before the "how"
- Use analogies for complex concepts
- Build from simple to complex
- Provide multiple perspectives
- Show real-world applications

**Example:**

**Good explanation:**
> "Gradient descent is like hiking down a mountain in fog. You can't see the bottom, but you can feel the slope beneath your feet. At each step, you move in the direction that goes downward most steeply. Eventually, you reach a valley—though it might not be the lowest point on the mountain. In machine learning, the 'mountain' is the loss function, and we're searching for the minimum loss."

**Avoid:**
> "Gradient descent optimizes the loss function by computing the gradient and updating parameters in the opposite direction proportional to the learning rate."

(Second example is technically correct but lacks context and intuition)

## Review Process

### Self-Review Checklist

Before requesting review, verify:

#### Content Quality
- [ ] Learning objectives clearly stated
- [ ] Prerequisites listed
- [ ] All topics from outline covered
- [ ] Hands-on exercises included
- [ ] Solutions provided (in separate file)
- [ ] Summary and next steps included
- [ ] Additional resources listed

#### Technical Accuracy
- [ ] All code tested and works
- [ ] Dependencies listed with versions
- [ ] Setup instructions complete
- [ ] No errors in explanations
- [ ] Best practices followed
- [ ] Citations for external sources

#### Clarity and Accessibility
- [ ] Language clear and concise
- [ ] Technical terms defined
- [ ] Examples illustrate concepts
- [ ] Images have alt text
- [ ] Formatting consistent
- [ ] No typos or grammatical errors

#### Completeness
- [ ] README comprehensive
- [ ] LICENSE and LICENSE-CONTENT included
- [ ] CONTRIBUTING.md present
- [ ] metadata.yml complete (for curricula)
- [ ] All referenced files exist
- [ ] No broken links

### Requesting Review

**1. Create Pull Request**

```bash
# Push your branch
git push origin feature/your-content-name

# Create PR via GitHub CLI
gh pr create --title "Add [content name]" --body "Description of content"
```

**2. Use PR Template**

```markdown
## Content Type
- [ ] New curriculum repository
- [ ] New workshop material
- [ ] New tutorial
- [ ] Improvement to existing content
- [ ] Bug fix

## Description
[What content did you create/improve?]

## Related Discussion
[Link to proposal discussion]

## Self-Review Completed
- [ ] Self-review checklist completed
- [ ] All code tested
- [ ] Spell-check completed
- [ ] Links verified

## Review Needed
- [ ] Technical accuracy review
- [ ] Pedagogical review
- [ ] Accessibility review

## Target Audience
[Who is this for?]

## Estimated Learning Time
[How long to complete?]

## Testing Performed
- [ ] All code examples run successfully
- [ ] Exercises completed
- [ ] Tested on [operating system]
- [ ] Dependencies verified

## Screenshots/Previews
[If applicable, add images showing content]

## Additional Context
[Anything reviewers should know?]
```

**3. Request Reviewers**

Tag appropriate reviewers:
- `@education-committee` for major content
- `@[subject-expert]` for technical review
- `@[educator]` for pedagogical review

### Review Types

#### 1. Technical Accuracy Review

**Reviewer focus:**
- Is information factually correct?
- Does code work as claimed?
- Are best practices followed?
- Are explanations accurate?
- Are references credible?

**Reviewer provides:**
- Corrections for inaccuracies
- Suggestions for improvements
- Additional resources
- Code improvements

**Timeline:** 1 week

#### 2. Pedagogical Review

**Reviewer focus:**
- Are learning objectives appropriate?
- Is difficulty level accurate?
- Is content teachable?
- Are exercises effective?
- Is progression logical?
- Is it engaging?

**Reviewer provides:**
- Suggestions for structure
- Exercise improvements
- Clarity recommendations
- Engagement ideas

**Timeline:** 1 week

#### 3. Accessibility Review

**Reviewer focus:**
- Is language inclusive?
- Are explanations clear?
- Are multiple learning styles addressed?
- Is it accessible to diverse learners?
- Are there barriers to entry?

**Reviewer provides:**
- Language suggestions
- Alternative explanations
- Accessibility improvements
- Inclusion recommendations

**Timeline:** 3-5 days

### Addressing Feedback

**1. Read all feedback carefully**

**2. Respond to comments**
- Thank reviewers
- Ask clarifying questions
- Explain your reasoning (if disagree)
- Mark conversations as resolved when addressed

**3. Make revisions**
- Address all required changes
- Consider optional suggestions
- Commit with clear messages
- Request re-review if substantial changes

**4. Approval**
- Need 2+ approvals to merge (1 technical + 1 pedagogical minimum)
- Education Committee approval for major content
- All conversations should be resolved

## Publishing Content

### Final Steps

**1. Final review**
- Re-run all code examples
- Check all links
- Verify formatting
- Read through entirely

**2. Create version tag**
```bash
git tag -a v1.0 -m "Initial release of [content name]"
git push origin v1.0
```

**3. Merge to main**
```bash
# Via GitHub PR interface
# Or via CLI:
gh pr merge [PR-number] --squash
```

**4. Announce**

Post in community channels:
- Slack #announcements
- LinkedIn
- GitHub Discussions (Announcements category)

**Announcement template:**
```markdown
🎉 New Learning Content Available!

We're excited to announce [Content Name]!

**What it is**: [Brief description]
**Who it's for**: [Target audience]
**What you'll learn**: [Key outcomes]
**Time estimate**: [Duration]

**Get started**: [Link to repository]

Huge thanks to @[contributors] for creating this!

Questions? Ask in #[relevant-channel]
```

### Maintenance Responsibilities

As content creator, you're expected to:

**Short-term (first 3 months):**
- Monitor for issues and questions
- Fix bugs quickly
- Respond to community feedback
- Iterate based on early learners

**Ongoing:**
- Review annually for accuracy
- Update for library/tool changes
- Address high-priority issues
- Mentor contributors who want to improve content

**Can't maintain anymore?**
- Find a co-maintainer
- Post in #content-maintainers
- Transfer to Education Committee

## Attribution and Licensing

### Your Rights

When you contribute educational content:

**You retain copyright** to your work

**You grant license** to the community:
- Content (text, slides, etc.): CC-BY-4.0
- Code examples: MIT

**You get credit**:
- Listed as author in repository
- Mentioned in announcements
- Profile badge as educator
- Community recognition

### How to Attribute

**In your content:**

```markdown
# [Content Title]

**Author**: [Your Name]
**Contributors**: [Other contributors]
**License**: CC-BY-4.0 (content), MIT (code)

---

Created for [Philly AI Tech Alliance](https://github.com/Philly-AI-Tech-Alliance)
```

**In LICENSE-CONTENT:**
```
Copyright (c) 2026 [Your Name] and Philly AI Tech Alliance

This work is licensed under the Creative Commons Attribution 4.0
International License. To view a copy of this license, visit
http://creativecommons.org/licenses/by/4.0/
```

**In LICENSE (for code):**
```
MIT License

Copyright (c) 2026 [Your Name] and Philly AI Tech Alliance

[Standard MIT license text]
```

### Using External Resources

**When including others' work:**

**If CC-BY licensed:**
- Include full attribution
- Link to original
- Note any modifications
- Keep same license

**If MIT/open source code:**
- Include original license
- Credit original author
- Link to source

**If copyrighted:**
- Get explicit permission
- Only link, don't copy
- Fair use for short quotes only

**Public domain:**
- Still cite source
- Verify public domain status

## Getting Help

### Resources

**Templates and examples:**
- `ai-fundamentals` repository - Full curriculum example
- `workshop-materials` repository - Workshop template
- `.github/docs/templates/` - All templates

**Documentation:**
- [EDUCATION-STRATEGY.md](EDUCATION-STRATEGY.md) - Overall strategy
- [LEARNING-PATHS.md](LEARNING-PATHS.md) - How content fits together

**Community:**
- **Slack**: #content-creators channel
- **GitHub Discussions**: Content category
- **Office Hours**: Weekly Q&A for content creators
- **Mentorship**: Get paired with experienced educator

### Common Questions

**Q: How long should a curriculum be?**
A: 30-80 hours of learning time is typical. Depends on scope.

**Q: Can I create content in languages other than Python?**
A: Yes! We welcome R, Julia, JavaScript, etc. Just note language clearly.

**Q: What if I can't finish content I proposed?**
A: Communicate early! We can find co-creators or pause the work.

**Q: Can I teach concepts without code?**
A: For non-technical tracks, yes. But most content should include hands-on practice.

**Q: How technical should explanations be?**
A: Match your target audience. Check prerequisites and explain accordingly.

**Q: Can I reuse content I created elsewhere?**
A: Yes, if you own copyright or have permission. Must disclose and attribute.

**Q: Do I need to create all exercises from scratch?**
A: You can adapt existing exercises with proper attribution (if licensed appropriately).

**Q: What if someone disagrees with my technical approach?**
A: Good faith disagreements are welcome! Document your reasoning. There are often multiple valid approaches.

## Recognition and Thanks

### How We Recognize Contributors

**All contributors receive:**
- GitHub profile badge: "Philly AI Tech Alliance Educator"
- Listed in repository README
- Mentioned in community announcements
- Invited to educator-exclusive events

**Top contributors receive:**
- Featured in LinkedIn posts
- Invited to speak at meetups
- Early access to new initiatives
- Input on education strategy
- Educator of the Month recognition

### Community Building

**Ways to stay involved:**
- Join Education Committee
- Mentor new content creators
- Lead workshops using content
- Improve existing content
- Advocate for learners
- Help shape learning strategy

## Code of Conduct

All contributors must follow our [Code of Conduct](../CODE_OF_CONDUCT.md).

**In educational content:**
- Be respectful and inclusive
- Avoid controversial examples
- Consider diverse perspectives
- Create safe learning environment

## Start Contributing Today!

Ready to create educational content?

**1. Browse existing content**
   - [ai-fundamentals](https://github.com/Philly-AI-Tech-Alliance/ai-fundamentals)
   - [workshop-materials](https://github.com/Philly-AI-Tech-Alliance/workshop-materials)

**2. Join the community**
   - Slack: #content-creators
   - Intro yourself!

**3. Propose your idea**
   - Open a discussion
   - Get feedback

**4. Start creating!**

---

## Document Information

**Maintained by**: Education Committee
**Last Updated**: March 2026
**Version**: 1.0

**Questions?** Contact: education@philly-ai-tech.org

---

**Thank you for helping make AI education accessible to everyone!**

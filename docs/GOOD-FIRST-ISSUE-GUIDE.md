# Good First Issue Guide

This guide helps maintainers create and manage issues that are ideal for newcomers to the Philly AI Tech Alliance. Well-crafted good first issues are essential for successful onboarding and community growth.

## Why Good First Issues Matter

Good first issues:
- **Lower barriers to entry** for new contributors
- **Build confidence** through achievable wins
- **Introduce project conventions** in low-stakes context
- **Create positive first experiences** that encourage ongoing contribution
- **Save maintainer time** by being self-explanatory
- **Grow the contributor base** sustainably

Poor first issues (too vague, too complex, blocking critical work) frustrate newcomers and waste everyone's time.

---

## What Makes a Good First Issue

### Essential Characteristics

#### 1. Clear, Well-Defined Scope
- **Specific task** with clear completion criteria
- **Single concern**: Fix one bug, add one feature, improve one doc section
- **No ambiguity** about what success looks like
- **Achievable**: Can be completed in one sitting

✅ **Good**: "Add example code snippet to the 'Getting Started' section of README.md showing how to initialize the client"

❌ **Bad**: "Improve documentation" (too vague)

❌ **Bad**: "Refactor authentication system and add OAuth support" (too broad, multiple concerns)

---

#### 2. Not Blocking Other Work
- **Independent**: Doesn't hold up other features or fixes
- **Low priority**: Important but not urgent
- **Flexible timeline**: Can sit for a few weeks without issue

✅ **Good**: Adding optional examples to documentation

❌ **Bad**: Fixing a critical bug affecting production users

---

#### 3. Self-Contained
- **Minimal dependencies** on other code or systems
- **Single file or component** preferred
- **Clear location** in the codebase
- **No complex setup** required

✅ **Good**: "Fix typo in line 47 of `src/utils/helpers.py`"

❌ **Bad**: "Update API client to work with new authentication flow" (depends on auth system knowledge)

---

#### 4. Has Context and Examples
- **Background**: Why this issue exists and why it matters
- **Current state**: What exists now
- **Desired state**: What it should look like after fix
- **Examples**: Links to similar code, screenshots, or sample output
- **Resources**: Links to relevant documentation or discussions

✅ **Good Example**:
```markdown
## Context
Our README has instructions for Python and JavaScript users, but not
for Ruby developers. We're getting questions from Ruby users about how
to get started.

## Current State
README.md only has sections for Python and JavaScript.

## Desired State
Add a "Ruby" section following the same format as the Python section.

## Example
See the Python section (lines 45-60) for the format to follow.

## Resources
- Ruby client documentation: [link]
- Similar issue for JavaScript: #123
```

❌ **Bad**: "Add Ruby instructions to README"

---

#### 5. Appropriate Difficulty
- **Estimated time**: 2-8 hours for someone new to the project
- **Skills required**: Match common contributor skills
- **Learning opportunity**: Teaches something useful but not overwhelming
- **No "gotchas"**: Avoid edge cases or tricky bugs for first issues

**Time Estimates**:
- **30 min - 2 hours**: Typo fixes, documentation additions, adding examples
- **2-4 hours**: Simple bug fixes, small features, test additions
- **4-8 hours**: Moderate features, refactoring one component, comprehensive docs
- **8+ hours**: NOT suitable for good-first-issue

---

#### 6. Mentorship Available
- **Maintainer committed** to answering questions
- **Response time**: Commit to responding within 24-48 hours
- **Office hours**: Consider offering live help during community office hours
- **Welcoming tone**: Make it clear questions are encouraged

---

## Types of Good First Issues

### Documentation
**Examples**:
- Fix typos or grammar errors
- Add missing examples to README or guides
- Expand FAQ with common questions
- Add code comments to confusing sections
- Create or improve diagrams

**Why good for newcomers**: Low risk, teaches project concepts, visible impact

---

### Code Quality
**Examples**:
- Fix linting warnings
- Add type hints to untyped functions
- Improve variable naming for clarity
- Add docstrings to undocumented functions
- Format code to match style guide

**Why good for newcomers**: Clear right/wrong, teaches conventions, low complexity

---

### Testing
**Examples**:
- Add unit tests for untested utility functions
- Increase test coverage for specific module
- Add test cases for edge conditions
- Improve test documentation

**Why good for newcomers**: Teaches codebase, clear success criteria, low risk of breaking things

---

### Small Bug Fixes
**Examples**:
- Fix off-by-one errors
- Correct edge case handling
- Fix broken links in documentation
- Resolve simple UI glitches

**Why good for newcomers**: Real impact, clear problem statement, satisfying to fix

---

### Small Features
**Examples**:
- Add optional parameter to existing function
- Implement simple helper function
- Add configuration option
- Create simple CLI command

**Why good for newcomers**: Learn full contribution flow, creative outlet, meaningful contribution

---

## How to Label Issues as Good First Issues

### Step 1: Identify Candidates
Look for:
- Issues you've been putting off because they're small
- Documentation gaps you've noticed
- Easy bugs that aren't urgent
- "Nice-to-have" features that are straightforward
- Feedback from new users about confusing parts

### Step 2: Prepare the Issue
Before adding the label, ensure the issue has:
- [ ] Clear, descriptive title
- [ ] Detailed description with context
- [ ] Current state and desired state
- [ ] Examples or references
- [ ] Acceptance criteria (checklist)
- [ ] Links to relevant code or docs
- [ ] Estimated time/difficulty
- [ ] Confirmation it's not blocking other work

### Step 3: Add Labels
Apply these labels:
- **`good-first-issue`**: Primary label
- **Type label**: `documentation`, `bug`, `enhancement`, etc.
- **Area label**: `area: frontend`, `area: backend`, etc. (if using)
- **Difficulty**: `difficulty: easy` (optional)

### Step 4: Add Issue Template
Use this template in the issue body:

```markdown
## Good First Issue

This issue has been marked as a good first issue because it:
- Has clear scope and requirements
- Doesn't block other work
- Is a great way to learn about [SPECIFIC AREA]

### Getting Started
1. Comment on this issue to let us know you're working on it
2. Read our [Contributing Guide](link)
3. Fork the repository and create a branch
4. Make your changes following the acceptance criteria below
5. Submit a pull request

### Need Help?
- Ask questions in the comments below
- Join our [Slack/Discord] and ask in #contributors
- Attend contributor office hours [link to schedule]
- Tag @maintainer-name for guidance

### Acceptance Criteria
- [ ] [Specific requirement 1]
- [ ] [Specific requirement 2]
- [ ] [Specific requirement 3]
- [ ] Tests pass
- [ ] Documentation updated (if applicable)

### Mentorship
@maintainer-name will provide guidance and review your pull request.
```

### Step 5: Monitor and Support
- Check issue at least once per day
- Respond to questions promptly
- Be encouraging and patient
- Offer specific guidance, not just "read the docs"
- Thank contributors for their interest even if they don't complete it

---

## Good First Issue Template Example

```markdown
### Issue Title
Add error handling example to API documentation

### Description
Our API documentation shows how to make successful requests, but doesn't show
how to handle errors. New users are confused about what to do when requests fail.

### Current State
The "Making Requests" section of `docs/api-guide.md` shows only the happy path:
```python
response = client.get('/users/123')
user = response.json()
```

### Desired State
Add a subsection called "Handling Errors" that shows:
1. How to check for error responses
2. How to access error messages
3. Common error codes and their meanings
4. A complete example with try/except

### Example Code
Here's the structure we'd like to see:

```python
try:
    response = client.get('/users/123')
    response.raise_for_status()  # Raises exception for 4xx/5xx status codes
    user = response.json()
except client.APIError as e:
    print(f"API error: {e.message}")
    print(f"Error code: {e.code}")
except client.NetworkError as e:
    print(f"Network error: {e}")
```

### Resources
- Current API documentation: `docs/api-guide.md` (lines 45-80)
- API error handling code: `src/client/errors.py`
- Similar example for webhooks: `docs/webhooks.md` (lines 120-150)

### Estimated Time
2-3 hours (including reading existing docs and testing the example)

### Acceptance Criteria
- [ ] Add "Handling Errors" subsection to `docs/api-guide.md`
- [ ] Include code example showing try/except pattern
- [ ] List at least 3 common error codes (400, 401, 404) with explanations
- [ ] Test the example code to ensure it works
- [ ] Follow the existing documentation style and formatting

### Good First Issue
This is a great first issue because:
- Documentation changes are low-risk
- Clear requirements with an example structure
- Teaches you about our API and error handling
- Highly visible impact (helps many users)

### Getting Started
1. Comment below to claim this issue
2. Read our [Contributing Guide](../CONTRIBUTING.md)
3. Fork the repo and create a branch: `docs/add-error-handling-example`
4. Make your changes in `docs/api-guide.md`
5. Test the code example in your local environment
6. Submit a pull request

### Need Help?
- Ask questions in the comments below
- Join our Slack and ask in #documentation
- Tag @jane-maintainer for guidance
- Attend Tuesday office hours: [link to calendar]

### Mentorship
@jane-maintainer is committed to reviewing this PR within 24 hours and
answering any questions you have. Don't hesitate to ask!
```

---

## Mentorship Guidelines for Maintainers

When a newcomer claims a good first issue:

### Initial Response (within 24 hours)
```markdown
Welcome, @contributor! Thanks for taking this on!

Here's how to get started:
1. [Specific first step]
2. [Specific second step]
3. [Pointer to relevant code/docs]

I'll be checking this thread daily and will review your PR within 48 hours of
submission. Please don't hesitate to ask questions—no question is too small!

Looking forward to your contribution!
```

### During Development
- **Check in after 3-5 days** if no update: "Hi @contributor, how's it going? Any questions?"
- **Answer questions thoroughly** but encourage exploration
- **Offer specific hints** without giving away the solution
- **Be patient** with mistakes and learning process

### Good Responses
✅ "Great question! Have you looked at how we handle similar cases in [FILE]? That might give you some ideas."

✅ "You're on the right track! One thing to consider: [SPECIFIC GUIDANCE]. What do you think?"

✅ "I see what you're trying to do. Let me explain how [CONCEPT] works in our codebase: [EXPLANATION]."

❌ "Just look at the documentation." (Not helpful)

❌ "Here's the complete solution: [CODE]." (Takes away learning opportunity)

### During Code Review
- **Start with positive feedback**: What they did well
- **Be specific and constructive**: Not "this is wrong" but "consider doing X because Y"
- **Explain the why**: Help them learn principles, not just fix this issue
- **Offer to pair**: If they're stuck, offer a quick call or screen share
- **Celebrate the merge**: Thank them and encourage next steps

### Code Review Template
```markdown
Thanks for the PR, @contributor! Great work on your first contribution!

**What I like:**
- [Specific positive thing 1]
- [Specific positive thing 2]

**Suggestions:**
- [Specific, actionable suggestion with explanation]
- [Another suggestion]

**Minor notes:**
- [Small formatting or style notes]

Overall, this is very close to ready! Please make the changes above and I'll
take another look. Let me know if any of my feedback is unclear.

Great job! 🎉
```

---

## Managing Good First Issues

### Issue Lifecycle

1. **Created**: Issue written and labeled
2. **Claimed**: Contributor comments they're working on it
3. **In Progress**: Contributor is actively working
4. **PR Submitted**: Pull request opened
5. **Merged**: Contribution completed!

### Stale Issues
If an issue is claimed but inactive for 7+ days:
```markdown
Hi @contributor, just checking in! Are you still working on this? If life got
busy (it happens!), no problem at all—just let us know so we can open it up
for someone else. If you're still interested but stuck, I'm happy to help!
```

After 14 days with no response, reclaim:
```markdown
I'm reopening this issue for others since we haven't heard back. @contributor,
feel free to jump back in anytime!
```

### Backlog Management
- **Keep 5-10 good first issues available** at all times
- **Refresh regularly**: Remove stale issues, add new ones
- **Diverse types**: Mix of docs, code, tests, bugs, features
- **Difficulty range**: Some very easy (30min) and some harder (8hrs)

---

## Common Mistakes to Avoid

### ❌ Too Vague
**Bad**: "Improve performance"
**Why**: No clear scope or success criteria

### ❌ Too Complex
**Bad**: "Refactor the authentication system to use JWT"
**Why**: Requires deep understanding of security and architecture

### ❌ Blocking Critical Work
**Bad**: "Fix bug causing data loss for users"
**Why**: Too urgent and risky for newcomer

### ❌ No Context
**Bad**: "Fix the bug in auth.py"
**Why**: No explanation of what the bug is or how to reproduce it

### ❌ Requires Extensive Setup
**Bad**: "Add feature to mobile app" (requires iOS/Android dev environment)
**Why**: High barrier to entry, not quick win

### ❌ No Mentorship Commitment
**Bad**: Labeling issue but never responding to contributor questions
**Why**: Leads to frustration and abandoned contributions

---

## Measuring Success

### Good First Issue Metrics

Track these to evaluate your good first issue program:

- **Claim rate**: % of good first issues that are claimed within 30 days
- **Completion rate**: % of claimed issues that result in merged PR
- **Time to first contribution**: How long from joining to first PR
- **Second contribution rate**: % of first-time contributors who make a second contribution
- **Satisfaction**: Survey contributors about their experience

### Success Targets
- **Claim rate**: >60% within 30 days
- **Completion rate**: >50% of claimed issues
- **Time to completion**: <14 days from claim to merge
- **Second contribution**: >30% make another contribution

### Red Flags
- Issues sitting unclaimed for >60 days (might be too hard or unclear)
- <30% completion rate (issues too complex or mentorship lacking)
- Contributors not returning (poor experience)

---

## Resources

### For Maintainers
- [CONTRIBUTING.md](../CONTRIBUTING.md) - Share this with new contributors
- [ONBOARDING.md](./ONBOARDING.md) - New contributor guide
- [Review Process](./review-process.md) - Code review guidelines

### For Contributors
- [Good First Issue Search](https://github.com/search?q=org%3APhilly-AI-Tech-Alliance+label%3Agood-first-issue+state%3Aopen&type=issues)
- [CONTRIBUTOR-JOURNEY.md](./CONTRIBUTOR-JOURNEY.md) - Path from newcomer to maintainer

### External Resources
- [GitHub's Guide to Good First Issues](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/encouraging-helpful-contributions-to-your-project-with-labels#about-default-labels)
- [First Timers Only](https://www.firsttimersonly.com/) - Philosophy and examples
- [How to Welcome New Contributors](https://opensource.guide/building-community/) - Open Source Guides

---

## Getting Help

Questions about creating or managing good first issues?
- Ask in Slack #maintainers channel
- Open a discussion in the Q&A category
- Reach out to Core Team members

---

## Template Checklist

Use this checklist when creating a good first issue:

- [ ] Clear, specific title
- [ ] Detailed description with context
- [ ] Current state explained
- [ ] Desired state explained
- [ ] Examples or references provided
- [ ] Acceptance criteria listed (checkboxes)
- [ ] Estimated time included
- [ ] Labels applied (good-first-issue, type, area)
- [ ] Not blocking other work
- [ ] Mentorship commitment made
- [ ] Links to relevant resources
- [ ] Instructions for getting started
- [ ] Encouragement to ask questions

---

*Last updated: March 2026*

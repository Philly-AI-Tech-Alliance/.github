# Identity & Access Management Operating Model

## Overview

This document defines the Identity and Access Management (IAM) framework for the Philadelphia AI Tech Alliance GitHub organization. It establishes clear roles, responsibilities, permissions, and workflows for managing access to our repositories and resources.

## Team Structure

The organization uses a **3-tier team structure** designed to provide appropriate access levels based on responsibility and contribution level:

### 1. Admins Team (`@Philly-AI-Tech-Alliance/admins`)

**Purpose**: Full organizational control and strategic oversight

**Responsibilities**:
- Manage organization settings and policies
- Configure security settings (2FA, secret scanning, Dependabot)
- Create and manage teams
- Grant and revoke access to repositories
- Manage GitHub Apps and integrations
- Handle billing and subscription management
- Oversee compliance with security policies
- Make final decisions on access escalations
- Coordinate with external stakeholders
- Emergency incident response

**Access Level**:
- Admin access to all organization repositories
- Full organization settings management
- Team creation and management
- Member role assignment
- Billing access

**Team Size**: Intentionally kept small (3-5 members recommended)

**Selection Criteria**:
- Organization founders or leadership
- Demonstrated commitment to the organization
- Strong security awareness
- Available for emergency response
- Technical competency with GitHub administration

### 2. Maintainers Team (`@Philly-AI-Tech-Alliance/maintainers`)

**Purpose**: Day-to-day repository management and project stewardship

**Responsibilities**:
- Manage assigned repositories
- Review and merge pull requests
- Triage and manage issues
- Configure repository settings (within bounds set by admins)
- Manage releases and tags
- Mentor contributors
- Enforce code quality standards
- Monitor repository health (dependencies, security alerts)
- Coordinate project roadmaps
- Write and maintain documentation

**Access Level**:
- Write access to assigned repositories
- Can merge PRs after review approval
- Can create, label, and close issues
- Can manage milestones and projects
- Can configure branch protection (within allowed parameters)
- **Cannot**: Delete repositories, change visibility, transfer repositories

**Team Size**: Scales with number of active projects (typically 1-3 per repository)

**Selection Criteria**:
- Consistent, high-quality contributions
- Strong technical skills in relevant domain
- Good communication and collaboration skills
- Understanding of project goals and standards
- Time commitment for ongoing maintenance
- Reviewed and approved by Admins team

**Promotion Path**: Contributors → Maintainers (after demonstrating consistent engagement)

### 3. Contributors Team (`@Philly-AI-Tech-Alliance/contributors`)

**Purpose**: Enable community participation and contributions

**Responsibilities**:
- Submit pull requests for improvements and fixes
- Create and participate in issue discussions
- Review others' pull requests (non-binding)
- Report bugs and suggest features
- Improve documentation
- Participate in community discussions
- Follow contribution guidelines and code of conduct

**Access Level**:
- Read access to public repositories
- Can fork repositories
- Can create issues and PRs
- Can comment on issues and PRs
- Can participate in discussions
- **Cannot**: Push directly to repositories, merge PRs, manage settings

**Team Size**: Open to all community members who want to contribute

**Selection Criteria**:
- Read and agreed to Code of Conduct
- Completed contributor onboarding
- GitHub account in good standing

**Promotion Path**: New members → Contributors → Maintainers

## Permission Levels by Resource Type

### Repository Access Matrix

| Action | Contributors | Maintainers | Admins |
|--------|--------------|-------------|--------|
| View public repos | ✓ | ✓ | ✓ |
| View private repos | By invitation | By assignment | ✓ |
| Create issues | ✓ | ✓ | ✓ |
| Comment on issues/PRs | ✓ | ✓ | ✓ |
| Create PRs | ✓ | ✓ | ✓ |
| Review PRs | Advisory | Binding | Binding |
| Merge PRs | ✗ | ✓ (after approval) | ✓ |
| Push to branches | ✗ | ✓ (non-protected) | ✓ |
| Manage issues | ✗ | ✓ | ✓ |
| Manage releases | ✗ | ✓ | ✓ |
| Configure webhooks | ✗ | ✗ | ✓ |
| Manage collaborators | ✗ | ✗ | ✓ |
| Change visibility | ✗ | ✗ | ✓ |
| Delete repository | ✗ | ✗ | ✓ |
| Transfer repository | ✗ | ✗ | ✓ |

### Organization-Level Permissions

| Action | Contributors | Maintainers | Admins |
|--------|--------------|-------------|--------|
| View member list | ✓ | ✓ | ✓ |
| View team list | ✓ | ✓ | ✓ |
| Create repositories | ✗ | Request only | ✓ |
| Manage teams | ✗ | ✗ | ✓ |
| Manage org settings | ✗ | ✗ | ✓ |
| Invite members | ✗ | Recommend | ✓ |
| Remove members | ✗ | ✗ | ✓ |
| Manage billing | ✗ | ✗ | ✓ |
| Configure security | ✗ | ✗ | ✓ |

## Workflows

### 1. Repository Creation Workflow

**Objective**: Ensure repositories are created with proper configuration and ownership

**Process**:

1. **Proposal** (Any team member)
   - Create issue in `.github` repository using "New Repository Request" template
   - Include: purpose, visibility, initial maintainers, technology stack
   - Tag: `repo-request`

2. **Review** (Admins)
   - Evaluate alignment with organization mission
   - Check for naming conflicts
   - Verify proposed maintainers are available
   - Review timeline: 3 business days

3. **Creation** (Admins)
   - Create repository with standard settings
   - Apply security configurations
   - Add branch protection rules
   - Assign maintainer team

4. **Initialization** (Assigned Maintainers)
   - Add README, LICENSE, .gitignore
   - Configure CI/CD if needed
   - Create initial documentation
   - Set up issue/PR templates

5. **Announcement** (Admins)
   - Announce in organization discussions
   - Update organization project board
   - Add to documentation index

**Timeline**: 5-7 business days from proposal to launch

**Emergency Fast-Track**: Admins can expedite for time-sensitive needs

### 2. Merge Permission Guidelines

**Objective**: Balance velocity with quality and security

**Standard Merge Requirements** (enforced via branch protection):

1. **Required Reviews**
   - Minimum: 1 approval from Maintainers or Admins
   - Recommended: 2 approvals for critical changes
   - Self-merge: Allowed for Maintainers on non-critical changes

2. **Required Status Checks**
   - All CI/CD pipelines must pass
   - Security scanning must complete
   - Linting and formatting checks
   - Unit tests (if applicable)

3. **Prohibited Actions**
   - Force pushes to protected branches
   - Deletion of protected branches
   - Merging without required approvals
   - Bypassing status checks (except emergency procedures)

**Special Cases**:

- **Hotfix/Emergency**: Admins can bypass checks with mandatory post-merge review
- **Dependabot PRs**: Can be auto-merged if CI passes (for minor/patch updates)
- **Documentation**: Single review sufficient
- **Breaking Changes**: Require 2 reviews + discussion thread

**Merge Methods**:
- **Squash Merge**: Default for feature branches (keeps history clean)
- **Rebase Merge**: For linear history on structured projects
- **Merge Commit**: For preserving detailed history (e.g., vendor merges)

### 3. Access Request and Escalation Workflow

**Objective**: Provide clear path for gaining access or resolving access issues

#### New Member Onboarding

1. **Application** (Prospective member)
   - Complete member application form
   - Agree to Code of Conduct
   - Provide GitHub username

2. **Review** (Admins)
   - Background check (public GitHub activity)
   - Verify alignment with community values
   - Decision within 5 business days

3. **Onboarding** (Admins)
   - Add to Contributors team
   - Send welcome package with resources
   - Assign onboarding buddy (from Maintainers)

#### Escalation to Maintainer

1. **Self-Nomination or Nomination** (Contributor or existing Maintainer)
   - Create issue in `.github` with "Maintainer Request" template
   - Include: contribution history, areas of expertise, time commitment
   - Provide 1-2 endorsements from existing Maintainers

2. **Evaluation** (Admins + Maintainers)
   - Review contribution quality and consistency
   - Assess technical competency
   - Verify availability and commitment
   - Discussion period: 7 days

3. **Decision** (Admins)
   - Announce decision with rationale
   - If approved: Add to Maintainers team, assign repositories
   - If not approved: Provide feedback and timeline for re-application

#### Escalation to Admin

1. **By Invitation Only** (Existing Admins)
   - Strategic organizational needs
   - Demonstrated leadership
   - Consensus among existing Admins
   - Formal vote required

#### Temporary Access Elevation

For special cases (e.g., external collaborators, one-time projects):

1. **Request** (Sponsor from Maintainers/Admins)
   - Specify purpose, duration, scope
   - Justify need for elevated access

2. **Approval** (Admins)
   - Grant minimum necessary permissions
   - Set expiration date
   - Document in access log

3. **Review** (Automated)
   - Weekly automated review of temporary access
   - Notification before expiration
   - Auto-revocation after expiration

### 4. Access Revocation Workflow

**Triggers**:
- Violation of Code of Conduct
- Security incident or compromise
- Prolonged inactivity (6+ months)
- Member request
- Change in employment/affiliation requiring access change

**Process**:

1. **Initiation** (Admin or automated system)
   - Document reason for revocation
   - Notify affected member (unless security incident)

2. **Revocation** (Admin)
   - Remove from relevant teams
   - Revoke repository access
   - Remove from org if appropriate
   - Document in access log

3. **Asset Transfer** (if applicable)
   - Transfer ownership of issues/PRs
   - Document tribal knowledge
   - Update CODEOWNERS file

4. **Communication**
   - Internal: Notify relevant team members
   - External: Update contributor docs if needed

**Appeal Process**: Available for revocations (except severe violations)

## Branch Protection Configuration

### Default Branch Protection Rules

Applied to `main` branch (and other primary branches) of all repositories:

```yaml
Branch Protection Rules:
  Required Reviews:
    - Required approving reviews: 1
    - Dismiss stale reviews: true
    - Require review from Code Owners: true (if CODEOWNERS exists)
    - Restrict who can dismiss reviews: Admins only

  Required Status Checks:
    - Require branches to be up to date: true
    - Status checks: (defined per repository)
      - CI/CD pipeline
      - Security scanning
      - Linting

  Restrictions:
    - Require linear history: false (allow merge commits)
    - Require signed commits: false (recommended but not required)
    - Include administrators: false (allow admin override for emergencies)
    - Restrict pushes: Maintainers and Admins only
    - Allow force pushes: false
    - Allow deletions: false

  Rules applied to administrators: false (emergency override capability)
```

### Repository-Specific Overrides

Maintainers can request stricter rules (but not looser) through Admin approval:
- Additional required reviewers
- Additional status checks
- Signed commit requirements
- CODEOWNERS enforcement

## Security and Compliance

### Mandatory Security Settings

All repositories must have:

1. **Dependabot Alerts**: Enabled
2. **Dependabot Security Updates**: Enabled
3. **Secret Scanning**: Enabled
4. **Code Scanning**: Enabled (for supported languages)
5. **Private Vulnerability Reporting**: Enabled

### Access Audit Schedule

- **Weekly**: Review temporary access grants
- **Monthly**: Review Maintainer activity and access
- **Quarterly**: Comprehensive access audit
- **Annually**: Complete IAM policy review

### Compliance Requirements

All team members must:
- Enable 2FA on GitHub account
- Use strong, unique passwords
- Secure personal access tokens
- Report security incidents immediately
- Complete annual security training

## Emergency Procedures

### Security Incident Response

1. **Detection**: Any team member can report
2. **Assessment**: Admins evaluate severity
3. **Containment**: Immediate access revocation if needed
4. **Remediation**: Fix vulnerability, update affected systems
5. **Communication**: Notify affected parties
6. **Post-Mortem**: Document lessons learned

### Emergency Access Override

Admins can bypass branch protection for:
- Critical security patches
- Service outages
- Data loss prevention

**Requirements**:
- Must document reason
- Must notify other Admins within 1 hour
- Must create post-merge review issue
- Subject to post-incident review

## Metrics and KPIs

To measure effectiveness of IAM model:

1. **Access Metrics**
   - Time to grant access: Target < 5 business days
   - Access audit findings: Target 0 critical issues
   - Unauthorized access attempts: Target 0

2. **Team Health**
   - Maintainer retention: Target > 80% annually
   - Contributor growth: Target 10% monthly
   - Promotion rate: Track Contributors → Maintainers

3. **Security Metrics**
   - 2FA adoption: Target 100%
   - Security alert response time: Target < 48 hours
   - Vulnerability remediation: Critical < 7 days

## Tools and Automation

### Current Tools

- **GitHub Teams**: Role-based access control
- **Branch Protection**: Automated enforcement
- **Dependabot**: Automated dependency updates
- **Secret Scanning**: Automated secret detection
- **GitHub Actions**: CI/CD and automation

### Planned Automation

- Automated temporary access expiration
- Access audit reporting dashboard
- Onboarding automation
- Activity monitoring and alerts

## Escalation Paths

### Technical Issues

1. **Repository-level**: Contact assigned Maintainers
2. **Organization-level**: Contact Admins team
3. **Urgent/Emergency**: Email security@philly-ai-tech-alliance.org

### Access Issues

1. **Access requests**: Create issue in `.github` repo
2. **Access disputes**: Email admins@philly-ai-tech-alliance.org
3. **Security concerns**: Email security@philly-ai-tech-alliance.org

### Policy Questions

1. **Interpretation**: Ask in GitHub Discussions
2. **Exceptions**: Request via issue in `.github` repo
3. **Changes**: Propose via PR to this document

## Document Maintenance

### Version History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2026-03-03 | DevOps WS1 | Initial operating model |

### Review Schedule

- **Quarterly**: Minor updates and clarifications
- **Annually**: Major review and revision
- **As-needed**: Emergency policy updates

### Change Process

1. Propose changes via PR to this document
2. Review by Admins team (minimum 7-day comment period)
3. Address feedback and iterate
4. Approval requires consensus of Admins
5. Announcement after merge

## Contact Information

- **General IAM Questions**: GitHub Discussions
- **Access Requests**: Issue in `.github` repository
- **Admins Team**: @Philly-AI-Tech-Alliance/admins
- **Security Issues**: security@philly-ai-tech-alliance.org
- **Admin Email**: admins@philly-ai-tech-alliance.org

## Additional Resources

- [GitHub Access Permissions Documentation](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories)
- [Security Best Practices](./SECURITY.md)
- [Code of Conduct](./CODE_OF_CONDUCT.md)
- [Contribution Guidelines](./CONTRIBUTING.md)

---

**Document Owner**: Admins Team (@Philly-AI-Tech-Alliance/admins)
**Last Updated**: March 3, 2026
**Version**: 1.0
**Status**: Active

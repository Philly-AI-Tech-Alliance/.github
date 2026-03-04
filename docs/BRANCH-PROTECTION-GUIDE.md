# Branch Protection Configuration Guide

## Overview

This guide provides step-by-step instructions for applying branch protection rules to repositories in the Philly-AI-Tech-Alliance organization. These rules enforce security and quality standards as defined in the IAM Operating Model.

## Quick Reference

### Standard Branch Protection Settings

Apply these settings to the `main` branch of all repositories:

- **Required Pull Request Reviews**: 1 approval
- **Dismiss Stale Reviews**: Enabled
- **Require Status Checks**: Enabled (strict mode)
- **Allow Force Pushes**: Disabled
- **Allow Deletions**: Disabled
- **Enforce Admins**: Disabled (allows emergency override)

## Configuration Methods

### Method 1: Using GitHub CLI with JSON Template

**Step 1**: Ensure the repository has a main branch with at least one commit

```bash
# If starting with empty repository:
git clone https://github.com/Philly-AI-Tech-Alliance/<repo-name>.git
cd <repo-name>
echo "# Repository Name" > README.md
git add README.md
git commit -m "Initial commit"
git push origin main
```

**Step 2**: Apply branch protection using the JSON template

```bash
gh api --method PUT \
  repos/Philly-AI-Tech-Alliance/<repo-name>/branches/main/protection \
  --input branch-protection.json
```

**JSON Template** (`branch-protection.json`):
```json
{
  "required_status_checks": {
    "strict": true,
    "contexts": []
  },
  "enforce_admins": false,
  "required_pull_request_reviews": {
    "dismiss_stale_reviews": true,
    "require_code_owner_reviews": false,
    "required_approving_review_count": 1
  },
  "restrictions": null,
  "allow_force_pushes": false,
  "allow_deletions": false
}
```

**Step 3**: Verify the configuration

```bash
gh api repos/Philly-AI-Tech-Alliance/<repo-name>/branches/main/protection \
  --jq '{required_pull_request_reviews, allow_force_pushes, allow_deletions}'
```

### Method 2: Using GitHub Web Interface

**Step 1**: Navigate to repository settings
1. Go to https://github.com/Philly-AI-Tech-Alliance/<repo-name>
2. Click on **Settings** tab
3. Click on **Branches** in the left sidebar

**Step 2**: Add branch protection rule
1. Click **Add branch protection rule**
2. Enter branch name pattern: `main`

**Step 3**: Configure protection rules

Check the following boxes:

**Protect matching branches**:
- [x] Require a pull request before merging
  - [x] Require approvals (set to 1)
  - [x] Dismiss stale pull request approvals when new commits are pushed
  - [ ] Require review from Code Owners (optional, if CODEOWNERS exists)

- [x] Require status checks to pass before merging
  - [x] Require branches to be up to date before merging
  - Add any CI/CD checks (e.g., tests, linting)

- [ ] Require conversation resolution before merging (optional)
- [ ] Require signed commits (optional, but recommended)
- [ ] Require linear history (optional)
- [ ] Require deployments to succeed before merging (optional)
- [ ] Do not allow bypassing the above settings (leave unchecked for admin override)

**Rules applied to administrators**:
- [ ] Leave unchecked (allows admin emergency override)

**Restrict who can push to matching branches**:
- Leave empty (managed via team permissions)

**Allow force pushes**:
- [ ] Leave unchecked (disabled)

**Allow deletions**:
- [ ] Leave unchecked (disabled)

**Step 4**: Click **Create** or **Save changes**

## Repository-Specific Customizations

### Adding Status Checks

When CI/CD is configured, update the `contexts` array in the JSON template:

```json
{
  "required_status_checks": {
    "strict": true,
    "contexts": [
      "ci/test",
      "ci/lint",
      "ci/build"
    ]
  },
  ...
}
```

Or via web interface: Add the check names in the "Status checks that are required" section.

### Requiring Code Owner Reviews

If a CODEOWNERS file exists, enable code owner review requirement:

**Via CLI**: Change in JSON template:
```json
{
  "required_pull_request_reviews": {
    "dismiss_stale_reviews": true,
    "require_code_owner_reviews": true,
    "required_approving_review_count": 1
  },
  ...
}
```

**Via Web**: Check "Require review from Code Owners"

### Stricter Protection (e.g., Critical Repositories)

For critical repositories, consider:
- Increasing required approving reviews to 2
- Enabling signed commits requirement
- Requiring linear history
- Adding more status checks

**Example JSON for stricter protection**:
```json
{
  "required_status_checks": {
    "strict": true,
    "contexts": ["ci/test", "ci/lint", "ci/security-scan"]
  },
  "enforce_admins": false,
  "required_pull_request_reviews": {
    "dismiss_stale_reviews": true,
    "require_code_owner_reviews": true,
    "required_approving_review_count": 2,
    "require_last_push_approval": true
  },
  "required_signatures": true,
  "required_linear_history": true,
  "restrictions": null,
  "allow_force_pushes": false,
  "allow_deletions": false
}
```

## Common Issues and Troubleshooting

### Issue: "Branch not found" error

**Cause**: The branch doesn't exist yet (empty repository)

**Solution**: Create at least one commit on the main branch first:
```bash
git clone https://github.com/Philly-AI-Tech-Alliance/<repo-name>.git
cd <repo-name>
echo "# Init" > README.md
git add README.md
git commit -m "Initial commit"
git push origin main
```

### Issue: "Resource not accessible by integration" error

**Cause**: Insufficient permissions on the GitHub token

**Solution**: Ensure you're authenticated with admin permissions:
```bash
gh auth status
# If needed:
gh auth login --scopes repo,admin:org
```

### Issue: Status checks not appearing

**Cause**: CI/CD workflows not yet configured

**Solution**:
1. Configure CI/CD first
2. Let workflows run at least once
3. Then add their names to required status checks
4. Or leave `contexts: []` empty until CI/CD is ready

### Issue: Can't push even after protection is set

**Expected behavior**: Protection rules work as intended

**Solution**:
- Use pull requests for all changes
- Or have an admin temporarily disable protection (not recommended)
- For emergencies, admins can override (since `enforce_admins: false`)

## Verification Checklist

After applying branch protection, verify:

- [ ] Cannot force push to main branch
- [ ] Cannot delete main branch
- [ ] Cannot push directly to main (must use PR)
- [ ] Pull requests require at least 1 approval
- [ ] Status checks must pass (if configured)
- [ ] Settings visible in repository Settings > Branches

## Bulk Configuration Script

For configuring multiple repositories at once:

```bash
#!/bin/bash
# bulk-branch-protection.sh

REPOS=(
  "repo-1"
  "repo-2"
  "repo-3"
)

for repo in "${REPOS[@]}"; do
  echo "Configuring branch protection for $repo..."

  # Check if main branch exists
  if gh api repos/Philly-AI-Tech-Alliance/$repo/branches/main &> /dev/null; then
    gh api --method PUT \
      repos/Philly-AI-Tech-Alliance/$repo/branches/main/protection \
      --input branch-protection.json
    echo "✓ $repo configured"
  else
    echo "✗ $repo: main branch not found, skipping"
  fi

  sleep 1  # Rate limiting courtesy
done

echo "Branch protection configuration complete!"
```

**Usage**:
```bash
chmod +x bulk-branch-protection.sh
./bulk-branch-protection.sh
```

## Maintenance

### Regular Reviews

Review branch protection settings:
- **Monthly**: Verify settings are still appropriate
- **Quarterly**: Update status check requirements as CI/CD evolves
- **After incidents**: Adjust rules if security issues arise

### Updating Protection Rules

To update existing rules, use the same `PUT` command with modified JSON:

```bash
gh api --method PUT \
  repos/Philly-AI-Tech-Alliance/<repo-name>/branches/main/protection \
  --input updated-branch-protection.json
```

### Removing Protection (Emergency Only)

⚠️ **Warning**: Only do this in emergencies and restore immediately after

```bash
gh api --method DELETE \
  repos/Philly-AI-Tech-Alliance/<repo-name>/branches/main/protection
```

**Required**: Create an incident report issue explaining why protection was removed

## Related Documentation

- [IAM Operating Model](./IAM-OPERATING-MODEL.md) - Complete access control framework
- [Security Policy](../SECURITY.md) - Security guidelines and reporting
- [Configuration Summary](./CONFIGURATION-SUMMARY.md) - Current organization setup

## Support

For questions or issues:
- **Technical Support**: Create issue in `.github` repository
- **Policy Questions**: Reference IAM Operating Model
- **Emergency**: Contact @Philly-AI-Tech-Alliance/admins

---

**Last Updated**: March 3, 2026
**Maintained By**: Admins Team
**Version**: 1.0

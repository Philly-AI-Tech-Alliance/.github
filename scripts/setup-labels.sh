#!/bin/bash

# Organization-wide label setup script
# This script creates standardized labels for all repositories in the Philly-AI-Tech-Alliance organization

set -e

ORG="Philly-AI-Tech-Alliance"
REPO=".github"

echo "Setting up organization-wide labels for $ORG/$REPO..."
echo "These labels will serve as the standard for all repositories."
echo ""

# Function to create or update a label
create_label() {
    local name="$1"
    local color="$2"
    local description="$3"

    echo "Creating label: $name"
    gh label create "$name" \
        --repo "$ORG/$REPO" \
        --color "$color" \
        --description "$description" \
        --force 2>/dev/null || echo "  Label '$name' already exists, updating..."
}

# Type Labels
echo "Creating Type Labels..."
create_label "bug" "d73a4a" "Something isn't working"
create_label "enhancement" "a2eeef" "New feature or request"
create_label "documentation" "0075ca" "Improvements or additions to documentation"
create_label "question" "d876e3" "Further information is requested"

# Priority Labels
echo ""
echo "Creating Priority Labels..."
create_label "priority: critical" "b60205" "Critical priority - needs immediate attention"
create_label "priority: high" "d93f0b" "High priority - should be addressed soon"
create_label "priority: medium" "fbca04" "Medium priority - normal priority item"
create_label "priority: low" "0e8a16" "Low priority - can be addressed later"

# Status Labels
echo ""
echo "Creating Status Labels..."
create_label "status: needs-triage" "ededed" "Needs initial review and categorization"
create_label "status: in-progress" "1d76db" "Work is currently in progress"
create_label "status: blocked" "b60205" "Blocked by another issue or external dependency"
create_label "status: needs-review" "fbca04" "Waiting for review or feedback"
create_label "status: ready-to-merge" "0e8a16" "Ready to be merged"

# Community Labels
echo ""
echo "Creating Community Labels..."
create_label "good-first-issue" "7057ff" "Good for newcomers"
create_label "help-wanted" "008672" "Extra attention is needed"
create_label "beginner-friendly" "7057ff" "Suitable for beginners"
create_label "mentor-available" "d4c5f9" "A mentor is available to help with this issue"

# Size Labels
echo ""
echo "Creating Size Labels..."
create_label "size: small" "c2e0c6" "Small change or fix (< 1 day)"
create_label "size: medium" "fef2c0" "Medium-sized change (1-3 days)"
create_label "size: large" "f9d0c4" "Large change or feature (> 3 days)"

# Additional Labels
echo ""
echo "Creating Additional Labels..."
create_label "dependencies" "0366d6" "Pull requests that update a dependency file"
create_label "security" "b60205" "Security-related issue or improvement"
create_label "performance" "1d76db" "Performance improvement"
create_label "testing" "e99695" "Related to testing"
create_label "ci/cd" "0e8a16" "Related to CI/CD pipelines"
create_label "breaking-change" "d93f0b" "Introduces a breaking change"
create_label "wontfix" "ffffff" "This will not be worked on"
create_label "duplicate" "cfd3d7" "This issue or pull request already exists"
create_label "invalid" "e4e669" "This doesn't seem right"

# Language-specific labels
echo ""
echo "Creating Language-specific Labels..."
create_label "python" "3572A5" "Related to Python code"
create_label "javascript" "f1e05a" "Related to JavaScript code"
create_label "typescript" "2b7489" "Related to TypeScript code"
create_label "docker" "2496ed" "Related to Docker"
create_label "github-actions" "2088ff" "Related to GitHub Actions"

echo ""
echo "✓ Label setup complete!"
echo ""
echo "To apply these labels to other repositories in the organization, you can:"
echo "1. Manually sync them in repository settings"
echo "2. Use the GitHub API to bulk-apply to all repos"
echo "3. Use a label syncing action in each repository"
echo ""
echo "Example to sync to a specific repo:"
echo "  gh label clone $ORG/$REPO --repo $ORG/target-repo --force"

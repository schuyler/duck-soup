#!/bin/bash
# Initialize a new feature implementation session directory
# Usage: ./init_session.sh <feature-slug>

set -e

if [ -z "$1" ]; then
    echo "Error: Feature slug required"
    echo "Usage: $0 <feature-slug>"
    exit 1
fi

SLUG="$1"
TIMESTAMP=$(date +"%Y%m%d-%H%M")
SESSION_DIR="docs/sessions/${TIMESTAMP}-${SLUG}"

# Create session directory
mkdir -p "$SESSION_DIR"

# Create REQUIREMENTS.md template
cat > "$SESSION_DIR/REQUIREMENTS.md" << 'EOF'
# Requirements

## Summary
[Brief 1-2 sentence summary of what needs to be built]

## Detailed Requirements
1. [First requirement]
2. [Second requirement]
3. [Additional requirements...]

## Constraints
- [Technical constraints]
- [Time constraints]
- [Other limitations]

## User Preferences
- [Specific preferences mentioned by user]
- [Technology choices]

## Success Criteria
- [ ] [First success criterion]
- [ ] [Second success criterion]
EOF

# Create PLAN.md template
cat > "$SESSION_DIR/PLAN.md" << 'EOF'
# Implementation Plan

## Approach
[High-level description of the implementation approach]

## Architecture Decisions
- [Key architectural decision 1]
- [Key architectural decision 2]

## Implementation Steps
1. [First step]
2. [Second step]
3. [Additional steps...]

## Files to Modify/Create
- `path/to/file1.ext` - [What will be done]
- `path/to/file2.ext` - [What will be done]

## Dependencies
- [External dependencies]
- [Internal dependencies]

## Risks & Mitigations
- **Risk**: [Description]
  - **Mitigation**: [How to handle it]
EOF

# Create TESTING.md template
cat > "$SESSION_DIR/TESTING.md" << 'EOF'
# Testing Plan

## Test Strategy
[Overall approach to testing this feature]

## Automated Tests
- [ ] [Test case 1]
- [ ] [Test case 2]

## Manual Verification Steps
- [ ] [Manual test 1]
- [ ] [Manual test 2]

## Edge Cases
- [ ] [Edge case 1]
- [ ] [Edge case 2]

## Performance Considerations
- [Performance requirements]
- [Load testing needs]

## Test Results
[To be filled in during Phase 5: VERIFY]
EOF

echo "✅ Session initialized: $SESSION_DIR"
echo ""
echo "Created files:"
echo "  - REQUIREMENTS.md"
echo "  - PLAN.md"
echo "  - TESTING.md"
echo ""
echo "Session directory: $SESSION_DIR"

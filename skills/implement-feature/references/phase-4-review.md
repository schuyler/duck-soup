# Phase 4: REVIEW

## Objective

Verify implementation meets requirements and identify issues before testing.

## Why This Exists

Chico prevents: shipping bugs, missing requirements, code quality issues, testing broken code.

## Protocol

1. **GATE: Ask permission to consult Chico**
   ```
   "May I consult Chico to review the implementation? I'll have him review:
   - All code from Phase 3
   - Verification against REQUIREMENTS.md
   - Code quality and best practices
   - Potential bugs or issues"
   ```

2. **Consult Chico**
   - Provide all code from Phase 3
   - Reference to REQUIREMENTS.md
   - Any specific concerns

3. **Receive Chico's feedback**
   - Requirements verification
   - Bug identification
   - Code quality improvements
   - Edge cases

   Trust his fresh perspective.

4. **Fix issues one at a time** (do NOT batch)
   ```
   Issue 1: [description]
   [Fix Issue 1]
   "Issue 1 fixed. Proceed to Issue 2?"
   [WAIT]
   ```

5. **If fixes were made: Ask about re-review**
   ```
   "Should I have Chico review the fixes?"
   ```
   Often warranted for multiple significant fixes or critical logic changes.

6. **Do not claim completion until approved**

7. **Phase Transition Protocol**
   ```
   WORKFLOW TRANSITION: REVIEW → VERIFY
   - Gates cleared:
     ✓ Asked permission to consult Chico
     ✓ Chico reviewed all Phase 3 code
     ✓ Fixed all identified issues
     ✓ Re-review completed (if needed)
     ✓ Implementation approved
   - Waiting for: nothing
   ```

## Critical Anti-Patterns

**❌ "Skipping Chico because I'm confident"**

Review is MANDATORY, not optional. Fresh eyes catch issues you miss. Chico verifies against requirements, not just bugs.

**❌ "Testing before review"**

Always REVIEW (Phase 4) before VERIFY (Phase 5). Don't waste time testing code that needs fixes.

## Key Takeaways

- Chico review is mandatory
- Review before testing (always Phase 4 before Phase 5)
- Fix issues one at a time with confirmation
- Trust Chico's feedback
- Re-review when needed

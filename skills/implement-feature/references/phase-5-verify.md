# Phase 5: VERIFY

## Objective

Ensure implementation works correctly through testing.

## Why This Exists

Zeppo prevents: shipping untested code, missing edge cases, undiscovered bugs, no verification strategy.

## Protocol

1. **GATE: Ask permission to consult Zeppo**
   ```
   "May I consult Zeppo to create a testing strategy? I'll have him:
   - Review the implementation
   - Create comprehensive test plan
   - Identify edge cases and scenarios"
   ```

2. **Consult Zeppo**
   - Provide complete implementation from Phase 3
   - Reference to REQUIREMENTS.md
   - Any specific concerns about functionality

3. **Receive Zeppo's testing strategy**
   - Automated tests to write/run
   - Manual verification steps
   - Edge cases to test
   - Performance considerations

4. **Write verification plan** to `docs/sessions/YYYYMMDD-HHMM-<slug>/TESTING.md`
   - Complete test plan
   - Automated vs manual tests
   - Expected results

5. **Execute tests**
   - Run automated tests
   - Perform manual verification
   - Check edge cases
   - Validate against requirements

6. **Do not close task until tests pass**
   - All tests must pass
   - Address issues discovered
   - Ask if user wants to update TESTING.md with results

7. **Phase Transition Protocol**
   ```
   WORKFLOW TRANSITION: VERIFY → DOCUMENT
   - Gates cleared:
     ✓ Asked permission to consult Zeppo
     ✓ Received testing strategy
     ✓ Wrote verification plan to TESTING.md
     ✓ Executed all tests
     ✓ All tests passed
   - Waiting for: nothing
   ```

## Critical Anti-Patterns

**❌ "Skipping Zeppo because tests seem obvious"**

Even "obvious" testing benefits from systematic approach. Zeppo identifies edge cases you miss.

**❌ "Proceeding with failing tests"**

All tests must pass before moving to documentation. Don't leave broken functionality.

## Key Takeaways

- Zeppo creates comprehensive test strategy
- Write test plan to TESTING.md
- Execute all tests (automated and manual)
- Don't proceed until all tests pass

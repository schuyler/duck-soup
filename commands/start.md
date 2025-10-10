# Development Task Workflow

You are beginning a development task: $ARGUMENTS

Follow the complete workflow defined below.

## Why This Workflow Exists

This workflow prevents:
- **Reinventing solutions** that already exist in the codebase (Groucho)
- **Shipping broken code** due to untested assumptions (Chico, Zeppo)
- **Undocumented features** that are hard to use or maintain (Harpo)
- **Context overload** from doing too much at once (step-by-step)

The gates are positioned at moments where you're most likely to:
- Skip due to overconfidence (Gate 1)
- Rush to completion (Gates 2, 3)
- Forget to document (Gate 4)
- Miss learning opportunities (Gate 5)

NEVER SKIP ANY STEPS IN THE WORKFLOW.

## When in Doubt, Follow the Process Strictly

**Meta-principle**: Ambiguity about whether a gate applies is itself the reason to apply it.

- Unsure if Groucho will find patterns? → That uncertainty means you MUST consult him
- Unsure if a task is "simple enough" to skip steps? → That uncertainty means you MUST follow all steps
- Unsure if something counts as "one step"? → Break it smaller

**The process exists precisely for situations where you're tempted to skip it.**

NEVER SKIP ANY STEPS IN THE WORKFLOW.

## Subagents (Use Codenames Only)

You have a team of subagents at your disposal. You must consult with them when their expertise becomes relevant. You must ask for permission to consult with them before doing so, so that the user can help guide your interactions.

* **Groucho** (groucho) - checks for existing patterns, helps plan solutions
* **Chico** (chico) - reviews your completed code implementations
* **Zeppo** (zeppo) - helps understand problems and test solutions
* **Harpo** (harpo) - maintains project documentation

Your teammates may have questions for you. You may already have some of the answers. Ask the user for help, but highlight the answers you already know.

IMPORTANT: You may only refer to your teammates by their codenames.

## Phase Transition Protocol

**MANDATORY: Before transitioning between workflow phases, you must output:**

```
WORKFLOW TRANSITION: [phase name] → [phase name]
- Gates cleared: [list all gates that were required and completed]
- Waiting for: [user confirmation / nothing]
```

This checkpoint forces you to consciously verify you've completed all requirements before proceeding. **Never skip this declaration.**

## Workflow (Follow Every Time)

NEVER SKIP ANY STEPS IN THE WORKFLOW.

### 1. GATHER REQUIREMENTS

**a. Understand your job: gather requirements from the user, not solve the problem yet**
   - Focus on understanding what the user needs
   - Don't jump to implementation ideas or solutions

**b. Ask clarifying questions to understand the problem**
   - What is the user trying to achieve?
   - Are there constraints or preferences?
   - If you need something from the Internet (docs, references), ask for it

**c. Confirm understanding with the user**
   - Summarize what you've understood
   - Ensure you have complete requirements

**d. Write requirements to .claude/REQUIREMENTS.md**
   - Use `rm -f` to attempt to remove the file if it already exists
   - Write the entire list of requirements, omitting nothing

**e. Use Phase Transition Protocol when moving to Phase 2**

### 2. PLAN

**a. MANDATORY GATE: Ask user for permission to consult Groucho**
   - State what you'll ask him: "I need Groucho to check for existing patterns and help formulate an implementation plan"
   - List what context you'll provide: requirements, documentation links from Phase 1, technical constraints, user preferences

**b. If approved, consult Groucho**
   - Provide ALL: requirements, documentation links gathered in Phase 1, technical constraints, user preferences
   - Get his guidance on implementation approach that leans into existing patterns

**c. Describe the plan in detail to the user**
   - Present the complete implementation plan
   - Explain the approach and reasoning

**d. Write plan to .claude/PLAN.md**
   - Use `rm -f` to attempt to remove the file if it already exists
   - Write the entire plan, omitting nothing

**e. Validate plan against workflow phases**
   - Ensure implementation steps contain only code/config files, not documentation (README, guides) or testing
   - If plan violates phase boundaries, correct it before presenting to user

**f. Request user confirmation**
   - Explicitly ask: "Please confirm this plan before I proceed to implementation"

**g. STOP and wait for user confirmation**
   - Do not proceed to Phase 3 until user explicitly confirms
   - Use Phase Transition Protocol when moving to Phase 3

### 3. IMPLEMENT (Step-by-Step)

**Step Boundaries - STRICTLY ENFORCED:**
* One step = one logical unit (one function, one file section, one config change)
* Each step may ONLY contain code for that specific step - no "while I'm here" additions
* Maximum 50 lines of code per step without explicit user override
* Break down every task into multiple steps before starting

**Step Execution Protocol:**
* Announce the step: "Step [N]: [description]"
* Perform ONLY that step's work
* End with: "Step [N] complete. Next step will be '[description of next step]'. Proceed?"
* STOP and wait for confirmation
* **Never write an entire file in one response unless explicitly instructed**

**After all implementation steps complete:**
* Offer to document the implementation with code comments if appropriate

### 4. REVIEW

**a. MANDATORY GATE: Ask user for permission to consult Chico**
   - State what you'll ask him: "I need Chico to review the completed implementation"
   - List what you'll have him review: all code written during Phase 3

**b. If approved, consult Chico**
   - Have him review the complete implementation
   - Get his feedback on code quality, correctness, and adherence to requirements

**c. Fix any issues identified**
   - Address all issues Chico identifies
   - Make fixes one at a time with user confirmation

**d. If fixes were made, ask user if they want Chico to review again**
   - Ensure all fixes are properly reviewed

**e. Do not claim completion until reviewed and approved**

### 5. VERIFY

**a. MANDATORY GATE: Ask user for permission to consult Zeppo**
   - State what you'll ask him: "I need Zeppo to provide testing/debugging guidance"
   - List what you need verified: the implementation meets requirements and works correctly

**b. If approved, consult Zeppo**
   - Get his guidance on how to test and verify the implementation
   - Understand what verification steps are needed

**c. Describe the plan in detail to the user**
   - Present the complete verification plan
   - Clearly identify which steps can be run automatically and which should be performed by the user

**d. Write verification plan to .claude/TESTING.md**
   - Use `rm -f` to attempt to remove the file if it already exists
   - Write the entire plan, omitting nothing

**e. Execute verification steps**
   - Follow Zeppo's testing guidance
   - Run tests, check behavior, validate correctness

**f. Do not close task until verified**
   - All verification steps must pass
   - Address any issues discovered during testing
   - Ask if they want to update .claude/TESTING.md with the results.

### 6. DOCUMENT

**a. Ask user if they want documentation updated**
   - Determine if the feature, fix, or change should be documented
   - If no documentation needed, skip to Phase 7

*b. MANDATORY GATE: Ask user for permission to consult Harpo**
   - State what you'll ask him: "I need Harpo to update project documentation"
   - List what documentation needs updating: [specific docs based on the work completed]

**c. If approved, consult Harpo**
   - Have him update relevant documentation (README, user guides, API docs, etc.)
   - Ensure documentation accurately reflects the changes made

### 7. REFLECT

**a. MANDATORY: Always suggest recording session learnings**
   - After all work is complete and user confirms satisfaction
   - Format: "Would you like me to record learnings from this session? This helps identify instruction gaps over time."

**b. If approved, create structured session file**
   - File location: `.claude/sessions/YYYY-MM-DD-HH-MM-taskname.md`
   - See existing session files for format examples

**c. Required session file sections:**
   - **Task Summary**: Brief description of what was accomplished
   - **User Corrections**: List each correction with your reasoning and gap type
   - **Project Preferences Revealed**: Any patterns or preferences discovered
   - **Gates Triggered**: Which gates were used during this session
   - **Workflow Observations**: Notes on what worked well or needs improvement

**d. Gap types for User Corrections:**
   - **coverage**: No instruction existed for this situation
   - **effectiveness**: Instruction exists but failed to prevent the issue
   - **clarity**: Instruction was misunderstood or ambiguous
   - **none**: No gap, you simply made an error

## Examples of Proper Step Granularity

❌ BAD - Too coarse:
"Step 1: Implement the authentication system"

✅ GOOD - Right granularity:
"Step 1: Create the User model with email/password fields"
"Step 2: Add password hashing using bcrypt"
"Step 3: Create login endpoint that validates credentials"
"Step 4: Add JWT token generation"

❌ BAD - Writing entire file:
"I'll create auth.ts with all the authentication logic"

✅ GOOD - One section at a time:
"I'll add the password hashing function to auth.ts"
[wait for confirmation]
"Now I'll add the token generation function"
[wait for confirmation]

## NEVER SKIP THE WORKFLOW

❌ "This is too simple for the process" → Follow the process regardless of perceived simplicity
❌ "Empty directory means no patterns" → Groucho checks broader context, not just one directory
❌ "Writing the whole file is one step" → Break into logical sections
❌ "I fetched docs but didn't pass to Groucho" → Groucho decides relevance, always pass documentation links

These anti-patterns are all examples of ways to fail at your job.

## Workflow Violation Recovery

If you realize you've skipped a gate or violated the workflow:

1. **STOP immediately** - don't proceed further with the violation
2. **Acknowledge the violation** - "I realize I skipped [Gate X]"
3. **Ask the user** - "Should I go back and do it properly, or continue from here?"
4. **Follow their direction** - execute the missed gate if requested, or assess impact and continue
5. **Resume properly** - continue from the correct workflow phase

## Stop and think before beginning a task

If you are starting a new task, STOP and THINK HARD about these instructions before replying to the user.

NEVER SKIP ANY STEPS IN THE WORKFLOW.

## IMMEDIATE Next Steps (ALWAYS follow this)

Do not attempt to solve any problems yet. YOU MUST START THE WORKFLOW RIGHT NOW. Acknowledge this to the user and list the phases before beginning the first phase.

ARGUMENTS: $ARGUMENTS

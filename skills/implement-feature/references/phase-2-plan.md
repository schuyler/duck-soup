# Phase 2: PLAN

## Objective

Create implementation plan aligned with existing codebase patterns.

## Why This Exists

Groucho prevents: reinventing solutions, inconsistent code structure, architectural decisions in isolation, missing existing patterns.

## Protocol

1. **GATE: Ask permission to consult Groucho**
   ```
   "May I consult Groucho? I'll provide:
   - Complete requirements from REQUIREMENTS.md
   - [Documentation links from Phase 1]
   - Technical constraints
   - User preferences"
   ```

2. **Consult Groucho with ALL context**
   - Complete requirements
   - **Documentation links from Phase 1** - If you fetched ANY docs, you MUST pass them to Groucho
   - Technical constraints
   - User preferences

3. **Present complete plan to user**
   - High-level approach
   - Files to create/modify
   - Key architectural decisions
   - Dependencies
   - Implementation steps

4. **Validate phase boundaries - THINK HARD**
   - Does the plan include testing steps? → Move to Phase 5
   - Does the plan include documentation? → Move to Phase 6
   - IMPLEMENT = code only (not testing, not docs)
   - VERIFY = testing only
   - DOCUMENT = docs only

   Correct any violations before presenting to user.

5. **Read template and create PLAN.md**
   - Read `assets/PLAN.md` as a guide
   - Write complete plan to `docs/sessions/YYYYMMDD-HHMM-<slug>/PLAN.md`

6. **GATE: Wait for user confirmation**
   ```
   "Please confirm this plan before I proceed to implementation."
   ```
   Do NOT proceed until user explicitly confirms.

7. **Phase Transition Protocol**
   ```
   WORKFLOW TRANSITION: PLAN → IMPLEMENT
   - Gates cleared:
     ✓ Asked permission to consult Groucho
     ✓ Consulted Groucho with complete context
     ✓ Presented complete plan
     ✓ Validated phase boundaries
     ✓ Created PLAN.md from template
     ✓ Wrote plan to PLAN.md
     ✓ Received user confirmation
   - Waiting for: nothing
   ```

## Critical Anti-Patterns

**❌ "Empty directory means no patterns"**

Groucho checks the ENTIRE codebase, not just one directory. Project-wide patterns (testing, error handling, logging) still apply.

**❌ "I fetched docs but didn't pass to Groucho"**

If you fetched ANY documentation in Phase 1, you MUST pass those links to Groucho. He determines relevance, not you.

## Key Takeaways

- Always consult Groucho (even for "simple" tasks)
- Provide complete context (requirements, docs, constraints, preferences)
- Validate phase boundaries (IMPLEMENT = code only)
- Wait for user confirmation before proceeding

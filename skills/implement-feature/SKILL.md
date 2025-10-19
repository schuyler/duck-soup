---
name: implement-feature
description: This skill should be used when implementing non-trivial software features that require planning, review, testing, and documentation. It orchestrates a team of specialized development agents (Groucho, Chico, Zeppo, Harpo) through a rigorous 7-phase workflow to ensure features are properly architected, implemented, reviewed, verified, and documented. Use this skill for multi-file features, new functionality, or any work where quality and thoroughness matter. Do not use for trivial single-line fixes or quick experimental prototypes.
---

# Implement Feature

## Core Principles

**1. Ambiguity means proceed strictly**

When uncertain whether a gate applies, that uncertainty is the reason to apply it. The process exists precisely for situations where you're tempted to skip it.

**2. Phase boundaries are strict**

- IMPLEMENT = write code only
- VERIFY = test code only
- DOCUMENT = update docs only

**3. Step-by-step prevents overwhelm**

One logical unit per step (max 50 lines). Wait for confirmation between steps.

## Development Team

- **Groucho** - Architectural advisor (Phase 2). Ensures new code aligns with existing patterns.
- **Chico** - Code reviewer (Phase 4). Verifies implementation meets requirements.
- **Zeppo** - Debugger and tester (Phase 5). Creates testing strategies.
- **Harpo** - Documentation specialist (Phase 6). Updates documentation.

## Phase Transition Protocol

**MANDATORY** before transitioning:

```
WORKFLOW TRANSITION: [current] → [next]
- Gates cleared: [list completed gates]
- Waiting for: [user confirmation / nothing]
```

## Session Structure

```
docs/sessions/YYYYMMDD-HHMM-<slug>/
├── REQUIREMENTS.md  (Phase 1)
├── PLAN.md         (Phase 2)
├── TESTING.md      (Phase 5)
└── REFLECTION.md   (Phase 7)
```

Initialize: `scripts/init_session.sh <feature-slug>`

## The 7 Phases

### Phase 1: GATHER REQUIREMENTS
Understand what the user needs.

- Ask clarifying questions
- Confirm understanding
- Create session directory
- Write requirements to REQUIREMENTS.md
- Store documentation links for Groucho

Load `references/phase-1-gather-requirements.md` for details.

---

### Phase 2: PLAN
Create implementation plan aligned with existing patterns.

- **GATE**: Ask permission to consult Groucho
- Provide: requirements, docs from Phase 1, constraints, preferences
- Present complete plan
- Write to PLAN.md
- **GATE**: Wait for user confirmation

Load `references/phase-2-plan.md` for details.

---

### Phase 3: IMPLEMENT
Execute plan step-by-step.

- One step = one logical unit (max 50 lines)
- Announce: "Step [N]: [description]"
- Perform ONLY that step
- End: "Step [N] complete. Next: [description]. Proceed?"
- **GATE**: Wait for confirmation

Load `references/phase-3-implement.md` for details.

---

### Phase 4: REVIEW
Verify implementation meets requirements.

- **GATE**: Ask permission to consult Chico
- Have Chico review all Phase 3 code
- Fix issues one at a time
- Ask if Chico should re-review
- Don't claim completion until approved

Load `references/phase-4-review.md` for details.

---

### Phase 5: VERIFY
Ensure implementation works correctly.

- **GATE**: Ask permission to consult Zeppo
- Get testing strategy from Zeppo
- Write verification plan to TESTING.md
- Execute tests
- Don't close until tests pass

Load `references/phase-5-verify.md` for details.

---

### Phase 6: DOCUMENT
Update documentation.

- **GATE**: Ask permission to consult Harpo
- Have Harpo update relevant docs
- Ensure docs reflect changes

Load `references/phase-6-document.md` for details.

---

### Phase 7: REFLECT
Record learnings.

- **GATE**: Always suggest recording learnings
- Create REFLECTION.md
- Document: task summary, user corrections, preferences, gates used
- Ask about cleaning up session files

Load `references/phase-7-reflect.md` for details.

---

## Workflow Violation Recovery

If you skip a gate:

1. STOP immediately
2. Acknowledge: "I realize I skipped [Gate X]"
3. Ask: "Should I go back and do it properly?"
4. Follow user's direction
5. Resume from correct phase

## Resources

**scripts/**
- `init_session.sh` - Create session directory

**references/**
- `phase-1-gather-requirements.md`
- `phase-2-plan.md`
- `phase-3-implement.md`
- `phase-4-review.md`
- `phase-5-verify.md`
- `phase-6-document.md`
- `phase-7-reflect.md`

Load phase references only when entering that phase.

## Starting a Task

When user requests feature implementation:

1. **Do not attempt to solve problems yet**
2. Acknowledge you'll use the 7-phase workflow
3. List all 7 phases
4. Begin Phase 1 immediately

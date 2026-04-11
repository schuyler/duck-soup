# Act: $ARGUMENTS

You are beginning a standard-tier development task. Follow the implementation pipeline from CLAUDE.md. This command maps agents to pipeline phases and defines the gate loop.

## Agent Dispatch

| Phase | Agent | Model |
|-------|-------|-------|
| Design | Groucho | inherit (strong reasoning) |
| All reviews | Chico | sonnet |
| Red TDD (failing tests) | Zeppo | sonnet |
| Baseline / final test gate | Zeppo | sonnet |
| Green TDD (implementation) | Harpo | sonnet |
| Documentation | Gummo | sonnet |
| Confirm before merge | Main agent + user | — |

## Pipeline

1. **Design** — Groucho researches codebase, proposes approach → Chico reviews → gate
2. **Red** (if test framework exists) — Zeppo writes failing tests → Chico reviews → gate
3. **Green** — Harpo implements, making tests pass → Chico reviews → gate
4. **Documentation** — Gummo updates docs → Chico reviews → gate
5. **Final test gate** — Zeppo runs full test suite
6. **Acceptance** — present to user for approval before merge

## Gate Loop

Each gate is pass/fail based on Chico's review:
- No critical/important findings → pass, next phase
- Critical/important findings → create fix tasks, re-review, re-gate
- If the loop fails twice → stop, surface to user

## Rules

- All agents run with `run_in_background: true`
- Rule of Two: no agent's work is accepted without Chico reviewing it
- Create task list entries for each pipeline step including gate tasks
- One task in_progress at a time
- Use agent codenames only: Groucho, Chico, Harpo, Zeppo, Gummo
- Don't restate CLAUDE.md rules — they're already loaded

## Start

Create the task list for this objective, then begin Phase 1.

OBJECTIVE: $ARGUMENTS

# Duck Soup

A structured development workflow for Claude Code with a team of specialized agents.

## Overview

> Five stooges in a trench coat posing as your dev team? Why, that's the oldest gag in software!
>
> You got Groucho telling you where to put the code, Chico checking if you actually put it there, Zeppo making sure the tests don't explode, Harpo writing the code nobody else wants to write, and Gummo... well, somebody's gotta write the docs, might as well be the quiet one.
>
> It's a structured workflow, which in Hollywood means you fire everyone in the right order!

— Groucho, your new technical architect

## Installation

In Claude Code:

```bash
/plugin marketplace add schuyler/duck-soup
/plugin install marx
```

## Usage

Start the development workflow with:

```bash
/marx:act <task description>
```

**Example:**

```bash
/marx:act Add user authentication with JWT tokens
```

The `/marx:act` command runs the implementation pipeline defined in CLAUDE.md, dispatching specialized agents through design, review, testing, and documentation phases with quality gates between each.

## Your All-Star Development Team

Five specialized agents:

### Groucho (Project Architect)
- Checks for existing patterns in codebase
- Reviews architectural decisions
- Recommends solutions that match project conventions

### Chico (Code Reviewer)
- Reviews completed implementations
- Verifies requirements adherence
- Identifies issues

### Harpo (Implementation Specialist)
- Executes approved plans step-by-step
- Green TDD — makes failing tests pass
- Fixes issues from review findings

### Zeppo (Testing & Debugging Specialist)
- Writes failing tests (Red TDD)
- Runs test gates
- Investigates errors and unexpected behavior

### Gummo (Documentation Specialist)
- Creates and updates project documentation
- Updates README, API docs, changelogs

## Pipeline

| Phase | Agent |
|-------|-------|
| Design | Groucho |
| All reviews | Chico |
| Red TDD (failing tests) | Zeppo |
| Green TDD (implementation) | Harpo |
| Test gates | Zeppo |
| Documentation | Gummo |
| Acceptance | Main agent + user |

Each phase passes through a quality gate (Chico review). If the gate fails, a fix-review-gate loop runs until it passes or escalates.

### Local Installation (for testing/development)

```bash
/plugin marketplace add /path/to/local/duck-soup
/plugin install marx
```

## License

BSD 3-Clause License - see [LICENSE](LICENSE) for details.

## Author

Schuyler Erle <schuyler@nocat.net>

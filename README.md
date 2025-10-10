# Duck Soup Development Workflow Plugin

A comprehensive development workflow plugin for Claude Code that prevents common pitfalls through disciplined phase-by-phase development with quality gates and specialized agents.

## Overview

This plugin provides a proven 7-phase development workflow that prevents:

- **Reinventing solutions** that already exist in the codebase
- **Shipping broken code** due to untested assumptions
- **Undocumented features** that are hard to use or maintain
- **Context overload** from doing too much at once

The workflow includes four specialized agents (Groucho, Chico, Zeppo, Harpo) that provide expert guidance at critical quality gates throughout the development process.

## Installation

### From Marketplace (when published)

```bash
/plugin marketplace add <github-username>/duck-soup
/plugin install dev
```

### Local Installation (for testing)

```bash
/plugin marketplace add /path/to/local/duck-soup
/plugin install dev
```

## Usage

Start the development workflow with:

```bash
/dev:start <task description>
```

**Example:**

```bash
/dev:start Add user authentication with JWT tokens
```

The `/dev:start` command initiates a structured workflow that guides you through all phases of development, ensuring quality and completeness at each step.

## Workflow Phases

The workflow consists of 7 sequential phases:

### 1. GATHER REQUIREMENTS
- Ask clarifying questions
- Confirm understanding
- Document requirements in `.claude/REQUIREMENTS.md`

### 2. PLAN
- **Quality Gate**: Consult Groucho for architectural guidance
- Create detailed implementation plan
- Document plan in `.claude/PLAN.md`
- Get user confirmation before proceeding

### 3. IMPLEMENT
- Step-by-step execution (max 50 lines per step)
- User confirmation after each step
- One logical unit per step (one function, one file section, etc.)

### 4. REVIEW
- **Quality Gate**: Consult Chico for code review
- Fix identified issues
- Verify adherence to requirements

### 5. VERIFY
- **Quality Gate**: Consult Zeppo for testing guidance
- Execute verification steps
- Ensure implementation works correctly

### 6. DOCUMENT
- **Quality Gate**: Consult Harpo for documentation
- Update relevant docs (README, API docs, etc.)

### 7. REFLECT
- Record session learnings
- Identify instruction gaps
- Document patterns discovered

## The Agent Team

The plugin includes four specialized agents:

### Groucho (Project Architect)
- Checks for existing patterns in the codebase
- Provides architectural guidance
- Helps plan solutions that align with project conventions
- **When consulted**: Before implementation (PLAN phase)

### Chico (Code Reviewer)
- Reviews completed code implementations
- Verifies adherence to requirements
- Identifies potential issues before deployment
- **When consulted**: After implementation (REVIEW phase)

### Zeppo (Debugging Specialist)
- Investigates errors and unexpected behavior
- Provides testing and debugging guidance
- Ensures implementations work correctly
- **When consulted**: During verification (VERIFY phase)

### Harpo (Documentation Specialist)
- Creates and maintains project documentation
- Updates README, API docs, changelogs
- Ensures features are properly documented
- **When consulted**: After verification (DOCUMENT phase)

## Philosophy

The workflow is built on these core principles:

### Never Skip Steps
Follow the complete workflow regardless of how simple a task appears. The process exists precisely for situations where you're tempted to skip it.

### Step-by-Step Discipline
- Break every task into small, logical steps
- Maximum 50 lines of code per step
- Request confirmation after each step
- Never write entire files in one response

### Quality Gates
Consult specialized agents at critical moments:
- **Groucho** before coding (prevents reinventing solutions)
- **Chico** after coding (prevents shipping broken code)
- **Zeppo** during testing (ensures correctness)
- **Harpo** for documentation (prevents undocumented features)

### Meta-Principle
"Ambiguity about whether a gate applies is itself the reason to apply it."

When in doubt about whether to consult an agent or follow a step, always err on the side of following the process.

## Version

**Current version**: 0.1.0 (beta)

This is an initial release. Feedback and contributions are welcome.

## Requirements

This plugin is self-contained and has no external dependencies. All workflow instructions are embedded in the `/dev:start` command.

## Contributing

To provide feedback or report issues:

1. Create an issue on the GitHub repository
2. Include your Claude Code version
3. Describe the workflow step where the issue occurred
4. Suggest improvements based on your experience

## License

BSD 3-Clause License - see [LICENSE](LICENSE) for details.

## Author

Schuyler Erle <schuyler@nocat.net>

---

**Note**: This plugin enforces disciplined development practices through guidance and reminders, not automation. Claude will ask for your confirmation at each phase transition and step, ensuring you remain in control of the development process.

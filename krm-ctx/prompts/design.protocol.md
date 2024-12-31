# Design Phase Protocol [DP]

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in RFC 2119.

## Overview [DP-OV]

### Purpose [DP-OV-001]
The Design Phase MUST translate requirements into a detailed technical architecture and implementation plan, creating a comprehensive blueprint for development through structured dialogue between user and LLM.

### Input/Prerequisites [DP-OV-002]
- MUST have completed Brainstorm Phase deliverables
- MUST have approved requirements documentation
- MUST have technical constraints defined
- MUST verify entrypoint.md phase is set to "design"
- SHOULD have stakeholder availability for technical decisions

### Output/Deliverables [DP-OV-003]
- MUST complete `architectural-design.md`
- MUST complete `implementation-plan.md`
- SHOULD update technical documentation as needed

### Success Criteria [DP-OV-004]
- MUST have complete technical architecture documented
- MUST break down implementation plan into manageable tasks
- MUST document all technical decisions with rationale
- MUST obtain design approval for implementation

## Document Templates [DP-DT]

### architectural-design.md Template [DP-DT-001]
```markdown
# Architectural Design

## System Overview
- Architecture Style/Pattern
- High-level Components
- System Boundaries
- Integration Points

## Component Design
[COMP-001] Component Name
- Purpose/Responsibility
- Internal Structure
- Dependencies
- API Specifications
- Data Models

## Technical Diagrams
[DIAG-001] Diagram Name
- System Context Diagrams
- Component Diagrams
- Data Flow Diagrams
- Sequence Diagrams
- State Diagrams

## Infrastructure Design
- Deployment Architecture
- Scaling Strategy
- Backup/Recovery Design
- Monitoring/Logging Design

## Security Architecture
- Authentication Flow
- Authorization Design
- Data Protection
- Security Controls

## Implementation Notes
- Technical Debt Considerations
- Performance Optimizations
- Testing Strategy
- Deployment Strategy
```

### implementation-plan.md Template [DP-DT-002]
```markdown
# Implementation Plan

## Project Structure
- Directory Organization
- Code Organization
- Build System
- Development Workflow

## Development Phases
[PHASE-001] Phase Name
- Goals
- Dependencies
- Timeline
- Resources Required

## Epics
[EPIC-001] Epic Name
- Description
- User Stories
- Technical Dependencies
- Acceptance Criteria
- Story Points/Effort

## Sprints
[SPRINT-001] Sprint Name
- Start/End Dates
- User Stories
- Technical Tasks
- Dependencies
- Success Criteria

## User Stories
[STORY-001] Story Name
- Description
- Acceptance Criteria
- Technical Tasks
- Dependencies
- Effort Estimate

## Technical Tasks
[TASK-001] Task Name
- Description
- Implementation Steps
- Dependencies
- Effort Estimate
- Validation Criteria
```

## Execution Steps [DP-EX]

### 1. Architecture Design [DP-EX-001]

1. System Architecture
   ```markdown
   Example Dialogue:
   LLM: "Based on the requirements, let's discuss the overall architecture:"
   LLM: "- Would a microservices approach be appropriate here?"
   LLM: "- How should we handle data persistence?"
   LLM: "- What are the key integration points?"
   ```

2. Component Design
   ```markdown
   Example Dialogue:
   LLM: "For [Component X]:"
   LLM: "- What are its core responsibilities?"
   LLM: "- What are its interfaces?"
   LLM: "- How does it handle failures?"
   ```

### 2. Implementation Planning [DP-EX-002]

1. Task Breakdown
   ```markdown
   Example Dialogue:
   LLM: "Let's break down the implementation into epics:"
   LLM: "- What are the major development phases?"
   LLM: "- How should we sequence the work?"
   LLM: "- What are the critical dependencies?"
   ```

2. Sprint Planning
   ```markdown
   Example Dialogue:
   LLM: "For Sprint 1:"
   LLM: "- What are the essential stories to include?"
   LLM: "- How do we validate completion?"
   LLM: "- What are the potential blockers?"
   ```

### 3. Design Documentation [DP-EX-003]

1. Technical Diagrams
   - Create system diagrams
   - Document component interactions
   - Illustrate data flows

2. Implementation Details
   - Document coding patterns
   - Define interfaces
   - Specify error handling

## Cross-Phase Validation [DP-CV]

### Prerequisites for Implementation Phase [DP-CV-001]
- [ ] Complete architecture documentation
- [ ] Detailed implementation plan
- [ ] Technical diagrams reviewed
- [ ] Development environment requirements defined

### Handoff Requirements [DP-CV-002]
1. Architecture Review
   - Design patterns validated
   - Performance considerations addressed
   - Security measures confirmed

2. Implementation Plan Review
    - Task dependencies mapped
    - Resource requirements confirmed
    - Timeline feasibility verified
    - MUST update entrypoint.md phase to "implementation"

### Rollback Procedures [DP-CV-003]
1. Design Version Control
   - Track design decisions
   - Document alternatives
   - Maintain decision history

## Phase-Specific Guidelines [DP-GL]

### Best Practices [DP-GL-001]
1. Architecture Design
   - Follow SOLID principles
   - Consider scalability
   - Plan for maintainability

2. Implementation Planning
   - Use realistic estimates
   - Include buffer for unknowns
   - Consider technical debt

### Common Pitfalls [DP-GL-002]
- Over-architecting solutions
- Insufficient error handling
- Missing edge cases
- Unclear component boundaries

### Quality Checks [DP-GL-003]
1. Architecture
   - Scalability
   - Maintainability
   - Security
   - Performance

2. Implementation Plan
   - Completeness
   - Feasibility
   - Resource alignment
   - Risk assessment
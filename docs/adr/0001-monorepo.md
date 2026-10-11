# 0001 – Monorepo for backend, frontend, contracts and deployment

- Status: accepted
- Date: 2026-10-11

## Context

The project consists of a Django backend, a Vue frontend, shared contracts
(OpenAPI schema, event JSON schema) and deployment manifests. It is developed
by a single person.

## Decision

All parts live in one repository: `backend/`, `frontend/`, `contracts/`,
`deploy/` and `docs/`.

## Consequences

### Positive

- API and event contracts change atomically with the code that uses them.
- One CI setup, one issue tracker, one place to read the whole system.

### Negative

- CI workflows need path filters to avoid running unrelated jobs.
- Independent versioning of backend and frontend is not possible.

## Alternatives considered

- Separate repositories per component: more realistic for large teams, but
  adds contract synchronisation overhead without benefit for a single developer.

# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- AuditLog

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- x Administrate admin dashboard
- x Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- x Bootstrap -> formatting
- x Icons from glyphicons
- x Update the styles for forms

## Refactor TODOS:
- x Add full_name method for users
- x Refactor user association integration test in post_spec
- x Refactor posts/_form for admin user with status
- x Fix post_spec.rb:82 to use factories
- x Fix post_spec.rb:52 to have correct user reference and not require update
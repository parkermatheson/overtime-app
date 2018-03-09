# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- x AuditLog

## Features:
- x Approval Workflow
- x SMS Sending -> link to approval or overtime input -> integrate with Heroku scheduler
- x Administrate admin dashboard
- x Block non admin and guest users
- x Email summary to managers for approval
- x Needs to be documented if employee did not log overtime
- x Create audit log for each text message
- x Need to update end_date when confirmed
- Need to update audit log status when an overtime item has been rejected
- Update buttons on employee homepage so they show on mobile
- Update buttons to include time span
- Update button sort order on employee homepage
- Remove unnecessary nav bar buttons for managers
- Fix admin dashboard bug
- Implement Honeybadger error reporting
- Implement new relic for keeping site alive
- Check on data issue and verify correct hours are being tracked

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

## TODOS:
- x Integrate validation for phone attr in User:
-- x No spaces or dashes
-- x all characters have to be a number
-- x exactly 10 characters
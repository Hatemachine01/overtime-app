# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text [done]
- x User -> Devise [done]
- x AdminUser -> STI [done]

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- Administrate admin dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime
- Block non admin and guest users [DONE]
- Create audit log for each text message
- Needt to update end_date when confirmed
- Need to update audit log status when an overtime item has been rejected
- Home Icons
- Update Sort order
- Remove uncessary nav bar buttons for managers


## UI:
- Bootstrap -> formatting
- Icons from Font Awesome
- Update the style for forms

## TODOS:
- Integrate validations for user phone  attr in User [DONE]

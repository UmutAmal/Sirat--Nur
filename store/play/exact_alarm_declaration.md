# Google Play Exact Alarm Declaration

Sirat-i Nur declares exact alarm permissions because prayer reminder and adhan
alerts are user-visible, time-critical religious reminders. A prayer reminder
that fires significantly late can mislead the user about the intended worship
time.

## Core User-Facing Feature

- Feature name: Prayer time reminders and adhan alerts.
- User action: The user enables prayer notifications/reminders in the app.
- Timing need: Alerts are scheduled for the calculated local prayer time.
- Benefit: The user receives the reminder at the intended worship time.

## Implementation Evidence

- Manifest permissions:
  `android/app/src/main/AndroidManifest.xml`
- Scheduling service:
  `lib/core/services/adhan_scheduler_service.dart`
- Schedule mode:
  `AndroidScheduleMode.exactAllowWhileIdle` when exact alarms are available;
  fallback to `AndroidScheduleMode.inexactAllowWhileIdle` when the system does
  not allow exact alarms.

## Play Console Declaration Text

Sirat-i Nur uses exact alarms only for user-enabled prayer time and adhan
reminders. These reminders are the app's core user-facing religious scheduling
feature. The app checks exact alarm availability and degrades to inexact
reminders if the device or user does not allow exact alarms.

Short declaration phrase: prayer time and adhan reminders.

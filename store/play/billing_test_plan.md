# Google Play Billing Test Plan

Product ID in code: `sirat_nur_premium_lifetime`

## Play Console Setup

- Create a non-consumable product with ID `sirat_nur_premium_lifetime`.
- Add license testers before closed testing.
- Confirm the app bundle package name is `com.umutamal.sirat_i_nur`.
- Upload a signed AAB produced with the release upload keystore.

## Test Cases

- Product details load successfully for `sirat_nur_premium_lifetime`.
- Purchase succeeds and premium entitlement is granted only after the purchase
  stream reports `PurchaseStatus.purchased`.
- Purchase completion is acknowledged with `completePurchase`.
- Restore purchases replays the entitlement for a tester account.
- Canceled, pending, and error purchase states do not grant premium.
- Offline launch keeps the last locally verified entitlement but does not invent
  a new entitlement.

## Release Gate

No store release should be promoted beyond internal testing until purchase,
cancel, pending, restore, and reinstall flows are tested with a Play license
tester account.

# FitOS — Project Briefing for Claude

## What this project is
We are building **FitOS** — a standalone AI personal trainer app for iPhone/Android (PWA, then App Store). This is a single-file HTML app that replaces the need for a human PT. Everything lives in one file.

## The ONE rule above all others
**Everything goes into `FitOS_App.html` only.**
No new files unless Eli explicitly requests one. No separate HTML pages, no split CSS files, no extra JS files. One file. All features inside it.

## The primary file
`FitOS_App.html` — located in this folder (Body transformation Build).
This is the app. It contains: CSS, SVG animations, workout data, meal data, grocery data, state management, all 5 tabs (Today/Train/Eat/Shop/Habits), the 9-step intake wizard, and all action handlers.

## Session startup protocol (do this at the start of every session)
1. Read `01 Daily Logs/` — find the most recent `[C] YYYY-MM-DD.md` log to understand where we left off
2. Check `MEMORY.md` in the memory folder — already auto-loaded but review for relevant context
3. Do NOT read FitOS_App.html in full at startup — it's 126KB+ and will burn tokens. Only read specific sections when editing (use Grep to find the right line, then Read with offset/limit)
4. Pick up from "Start Here Next Session" in the latest log

## Save checkpoint rule (CRITICAL)
Save `FitOS_App.html` to disk every ~60,000 characters during any build session. Sessions time out and unsaved work is lost. Log each checkpoint in the daily session log.

## Key files
- `FitOS_App.html` — THE app (126KB+, single file)
- `01 Daily Logs/[C] YYYY-MM-DD.md` — session logs written by Claude
- `Intake_Questionnaire.html` — legacy standalone file, no longer the focus (superseded by FitOS intake wizard)

## Business model (updated 2026-07-16)
- 7-day free trial for ALL users (no BF% gating)
- Subscription: $39.99 AUD/month | ~$319–349 AUD/year annual
- TWO RAILS: Web traffic/referrals → Stripe (~98% kept). App Store organic → Apple IAP (15% cut, worth it for frictionless conversion on cold traffic)
- Referrals always go through web/Stripe — warm leads, never waste 15% on Apple
- Referral: +7 days free per successful referred purchase, no cap
- No prompt packs, no plugins for sale — **the app IS the product**
- Revenue streams: subscription + Skool community + YouTube funnel

## FitOS app structure (5 tabs)
1. **Today** — daily dashboard (calories, protein, water, steps, streak, habits summary)
2. **Train** — gym tracker (8-week progressive overload, all 4 training days, SVG animations, rest timer, set logging/editing, dispatch export)
3. **Eat** — meal plan with macro tracking, water drops
4. **Shop** — weekly grocery list, Woolworths link
5. **Habits** — habit checklist, streak, step counter, water tracker, consequence card

## Intake wizard (9 steps, built into FitOS)
Step 0: About You | Step 1: Your Story | Step 2: Your Goal | Step 3: Experience | Step 4: Training Setup | Step 5: Strength Check | Step 6: Health & Diet | Step 7: Photos | Step 8: All Set!

## Eli's physical profile (for context)
- Male, training intermediate-advanced
- Lower back injury (deadlift-related, ~May 2026) — avoid RDL/deadlift until cleared
- Goal: body recomp → muscle build
- Trains at commercial gym

## Tone & style
- Australian PT energy — casual, direct, a bit of humour
- Scientific when discussing anatomy, nutrition, movements
- No waffle. Get to the point and get to work.

## What's next to build (in priority order)
1. Weekly check-in screen (Jeremy Ethier / Built With Science methodology) — inside FitOS Today tab or dedicated Sunday screen
2. Gleam scan result screen — scanning animation + emotional 7-day trial unlock card (universal, not BF%-gated)
3. Meal planner overhaul — real recipes, cooking instructions, personalised grocery list from TDEE
4. PWA manifest + service worker for iPhone home screen install
5. Supabase cloud sync + Stripe billing + referral tracking backend

## Current file size
FitOS_App.html — 268,239 chars (as of 2026-05-17)

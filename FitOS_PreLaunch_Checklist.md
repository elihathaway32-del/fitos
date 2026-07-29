# FitOS — Pre-Launch Master Checklist
**Last updated:** 2026-07-25  
**Target:** Soft launch in 8–10 weeks

---

## PHASE 1 — Backend Goes Live (This Session)
*App can take real money and sync real data*

- [ ] **Supabase** — create project at supabase.com, copy URL + anon key
- [ ] **Run SQL** — create `fitos_sync` table + row-level security policy (SQL ready to paste)
- [ ] **Stripe** — create $39.99 AUD/month recurring Payment Link at dashboard.stripe.com
- [ ] **Plug credentials into FitOS_App.html** — Claude does this, push v112
- [ ] **Test end-to-end** — create test account, complete trial flow, hit paywall, subscribe, verify access unlocked
- [ ] **Apple IAP scaffold** — add StoreKit in-app purchase as second payment option for App Store users

---

## PHASE 2 — Spend the $1,500 (Next Week)
*Buy everything needed to operate and be discovered*

### One-time / annual costs (~$220 AUD)
- [ ] **Apple Developer Program** — $149 AUD/year — developer.apple.com
- [ ] **Google Play Console** — ~$38 AUD one-time — play.google.com/console
- [ ] **fitos.app domain** — ~$30 AUD/year — check Cloudflare Registrar (cheapest)

### Monthly tools (~$100 AUD/month)
- [x] **Canva Pro** — ✅ Already subscribed
- [x] **CapCut Pro** — ✅ Already subscribed
- [ ] **Buffer or Later** — ~$18/month — social media scheduling (or use Claude + API connectors)
- [ ] Supabase free tier is fine until ~500 users. Pro ($54/month) only when needed.

### Ad budget (~$1,100 AUD)
- [ ] **Meta Ads (Instagram + Facebook)** — $700 AUD — AU audience, 18–38, gym/fitness/fat loss
- [ ] **TikTok Ads** — $400 AUD — Spark Ads on organic content to start
- [ ] Run for 2 weeks → cut what doesn't convert → double down on what does

---

## PHASE 3 — Social Media Setup
*Build the brand presence before ads go live*

### Create profiles
- [ ] **Instagram** — @FitOS_App (or @FitOS_) — claim now before launch
- [ ] **TikTok** — @FitOS — claim now
- [ ] **YouTube** — @FitOS — set up channel, upload channel art, one intro video
- [ ] **Facebook Page** — needed for Meta Ads pixel to work

### Connect automation (Claude does the posting)
- [ ] Install Meta connector in Cowork — Claude drafts + schedules Instagram posts
- [ ] Install TikTok connector — Claude schedules videos
- [ ] Set up social content calendar — Claude manages weekly posting queue
- [ ] Profile bios, links, cover images — Claude creates these from brand assets

### Content to produce before launch (build a 4-week backlog)
- [ ] 12× Instagram posts — app screenshots, workout tips, nutrition facts, transformation angles
- [ ] 20× TikTok/Reels — 15–30 sec clips: form guides, "what I eat in a day", app walkthroughs, transformation hooks
- [ ] 4× YouTube videos — full workouts, meal prep, "I replaced my PT with an AI" style content
- [ ] Profile launch post — announcement + 7-day free trial CTA

---

## PHASE 4 — Landing Page (fitos.app)
*Where all ads and referrals go*

- [ ] **Domain pointing** — connect fitos.app to GitHub Pages or a simple host (Cloudflare Pages = free)
- [ ] **Hero section** — "Your AI Personal Trainer. Build the body you want." + CTA button → Stripe
- [ ] **Features section** — animated screenshots of Today, Train, Eat, Habits tabs
- [ ] **Pricing section** — 7-day free trial → $39.99/month or $X/year (annual option)
- [ ] **Referral explanation** — "Refer a friend, get +7 days free. No limit."
- [ ] **Testimonials** — placeholder for beta user reviews (fill as they come in)
- [ ] **Email capture** — Mailchimp or ConvertKit for waitlist
- [ ] **App Store + download buttons** — once App Store is live
- [ ] **SEO basics** — title, meta description, OpenGraph tags, favicon

---

## PHASE 5 — App Store Submission
*Get on iPhone and Android*

- [ ] `npm install` in project folder (package.json already exists)
- [ ] `npx cap add ios` → `npx cap open ios` — opens Xcode
- [ ] Sign into Apple Developer account in Xcode
- [ ] Set app icons (all sizes) + splash screen
- [ ] **App Store screenshots** — 6.7", 6.1", 5.5" iPhone sizes (Canva templates)
- [ ] 30-second App Preview video (screen record + CapCut edit)
- [ ] App Store metadata — title: "FitOS — AI Personal Trainer", subtitle, keywords
- [ ] Age rating + privacy nutrition label (declare data collected)
- [ ] **TestFlight beta** — send to yourself + close contacts, shake out any bugs
- [ ] Submit for App Store review (allow 1–7 days)
- [ ] Repeat for Google Play (APK or AAB upload, simpler process)

---

## PHASE 6 — Legal (Non-Negotiable Before Launch)
*Required by Apple, Google, and Australian law*

- [ ] **Privacy Policy** — covers data collected (name, email, health data, photos), how it's stored (Supabase), how to delete account. Use a generator (Termly.io) then have a lawyer review.
- [ ] **Terms of Service** — subscription terms, refund policy, health disclaimer, IP ownership
- [ ] **Refund Policy** — Australian Consumer Law requires this to be clear and accessible
- [ ] **Health Disclaimer** — strengthen the one already in the app; not a substitute for medical advice
- [ ] Host all three at fitos.app/privacy, fitos.app/terms, fitos.app/refunds
- [ ] Link from app footer + App Store listing

---

## PHASE 7 — Beta Testing
*Confirm it works for real people before paid traffic hits it*

- [ ] **Test 4 user profiles using dev panel:**
  - Female, beginner, fat loss goal, home gym
  - Male, intermediate, bulk goal, commercial gym
  - Vegan + gluten-free dietary profile
  - 40s, general fitness, lower injury history
- [ ] **Self-test the full subscription flow** — trial → paywall → Stripe → access granted
- [ ] **Test referral flow** — generate referral link, complete a referred signup, verify +7 days credited
- [ ] **Fix any bugs** — document in session log, patch and push
- [ ] Define "launch ready" = zero critical bugs, all core flows working, backend live

---

## PHASE 8 — Launch Week
*Make noise*

- [ ] **Product Hunt submission** — prep assets 1 week ahead, line up 50+ upvotes for day-one push
- [ ] **Social launch posts** — coordinated drop across Instagram, TikTok, YouTube, Facebook same day
- [ ] **Email to waitlist** — "FitOS is live. Start your free 7-day trial."
- [ ] **Influencer seeding** — 5–10 AU fitness creators (10k–100k followers), offer free lifetime access for honest content
- [ ] **Skool community** — launch the community alongside the app; founding members get early access
- [ ] Monitor: trial signups, conversion rate, crash reports (Sentry), churn after day 7

---

## Revenue Target Check-ins
| Milestone | Monthly Revenue | Users |
|-----------|----------------|-------|
| Break even on costs | ~$300 AUD | ~8 users |
| Cover ad spend | ~$1,500 AUD | ~38 users |
| First meaningful income | ~$4,000 AUD | ~100 users |
| Serious business | ~$20,000 AUD | ~500 users |

---

## Budget Summary (Next Week's $1,500)
| Item | Cost (AUD) |
|------|-----------|
| Apple Developer Program | $149 |
| Google Play Console | ~$38 |
| fitos.app domain | ~$30 |
| Canva Pro (1 month) | $22 |
| CapCut Pro (1 month) | $22 |
| Buffer/Later (1 month) | ~$18 |
| Meta Ads test budget | $700 |
| TikTok Ads test budget | $400 |
| **Total** | **~$1,379** |
| Buffer remaining | ~$121 |

---

*Next session start: plug Supabase + Stripe credentials into FitOS_App.html → push v112 → backend is live → start Phase 2.*

# Juni Systemet (Dagens Spil) — Daily Bet Finding Skill

## Purpose

Find the single best value bet of the day targeting odds around 2.00, using a structured research and analysis process. Scope: 2026 FIFA World Cup + approved supplement leagues. One pick per day — this holds until the gated multi-bet revisit in Step 8 triggers (it has not yet); a deep card is not a reason to bet more.

**⚠️ This version consolidates rules that were previously scattered across chat history and never written back into this file. See the changelog note at the bottom for what changed vs. the prior version.**

-----

## Scope: Approved Competitions

- 2026 FIFA World Cup (all stages)
- Approved supplement leagues: **Norwegian Eliteserien, League of Ireland, Superettan, Allsvenskan, Besta deild karla (Iceland)**
- **UEFA Champions League** — approved by the user on 2026-07-21, with the seasonal caveat below.
- **UEFA Europa League** — approved by the user on 2026-07-22. The same seasonal caveat as the UCL applies (July–August qualifying rounds carry a strong prior toward elimination; league phase onward is full scope).
- **MLS** — approved by the user on 2026-07-22. In-season, competitive form and real H2H available, good liquidity on approved books. See the post-tournament-break caveat below.
- **Brasileirão Série A (Betano)** — approved by the user on 2026-07-22. Deep H2H, good liquidity. Kick-offs are in the South American window (22:00–02:00 CET), so they usually sit at the far end of the 24-hour pick window. See the post-tournament-break caveat below.
- **Danish Superliga + Danish 1. division** — approved by the user on 2026-07-24. Deep H2H and good liquidity on approved books, but the 2026/27 season opens in late July, so opening matchdays are form-light. See the opening-round / early-tournament caveat below.
- **Polish Ekstraklasa** — approved by the user on 2026-07-24. Deep H2H; the 2026/27 season also opens in late July, so the same opening-round caveat applies. Newly promoted sides (a club's first top-flight game) can be effective first-ever meetings — treat those as a Filter 1 concern.
- **Argentina Liga Profesional** — approved by the user on 2026-07-24. Deep H2H, good liquidity. Kick-offs are in the South American window (22:00–02:30 CET), at the far end of the pick window. The Apertura/Clausura split means a Fecha 1 has no current-tournament form; in 2026 the post-WC timing compounds it. Mitigant: most Argentine internationals play in Europe, so domestic squads are less gutted by call-ups than Brazil's were. See the opening-round caveat below.
- **Mexico Liga MX** — approved by the user on 2026-07-24. Deep H2H, good liquidity. Apertura/Clausura split, so early jornadas carry little current-tournament form. Kick-offs are in the North American window (02:00–06:00 CET), the far end of the pick window. Watch for own-book (e.g. Caliente) soft/promotional lines — confirm the price on an approved book. See the opening-round caveat below.
- **Brazil Série B (Betano)** — approved by the user on 2026-07-28. Deep H2H, good liquidity on approved books. Kick-offs are in the South American window (usually 00:00–02:35 CET), at the far end of the pick window. It paused for the 2026 World Cup exactly as Série A did, so the **post-tournament-break caveat below applies in full** — the season table stays valid, "last 6" lists are not usable across the break, and squad news outranks the model on the first matchdays back.
- **CONMEBOL Copa Sudamericana** — approved by the user on 2026-07-28. Continental knockout between South American clubs, deep H2H and good liquidity on approved books. Kick-offs are in the South American window (22:00–02:30 CET), at the far end of the pick window. **Two-legged-tie caveat:** in the knockout/playoff rounds, check the first-leg aggregate *before* researching — a lopsided aggregate (a side 2–3 goals up) turns the second leg into a near-dead rubber with heavy rotation risk on both sides (the leader coasts, the trailing side is semi-eliminated). That is a Filter 1 dead-rubber concern, not a value spot. Level aggregates and single-leg ties are full scope.

### Post-tournament-break caveat (MLS, Brasileirão Série A & B)

**The first one or two matchdays back from a major-tournament break are a degraded data environment.** Both leagues paused for the 2026 World Cup and resumed within days of the final; on 2026-07-22 the most recent competitive form for every Brazilian and MLS side was ~7 weeks old, and returning internationals were being rested, rotated, or reintegrated.

This is the same failure mode as the UCL qualifying caveat, from the other direction: the form data exists and looks real, but it describes a different team than the one taking the field.

- The **season table** stays valid — it aggregates enough matches to survive the gap, and it is what the attack/defence rate model should run on.
- **"Last 6 results" lists are not usable as form** across the break, and aggregator form lists will silently mix in break friendlies. Flag and exclude them per the Step 3 Outlier Rule.
- **Squad news outranks the model** on these matchdays. Absence lists were the single largest price driver on 2026-07-22 — Palmeiras' entire front line out, São Paulo missing five, Internacional missing eight. Check team news *before* trusting any modelled probability.
- **Big clubs are hit hardest** — they supply the most internationals. Backing a short-priced favourite in the first round back is the least attractive bet on the card; the market discount on such a favourite is usually informed, not an error.

Like the UCL caveat this is a **prior, not a blanket exclusion**. A fixture between two squads with no tournament call-ups is a legitimate candidate on matchday one.
- Allsvenskan approved by the user on 2026-07-20 (was previously pending).
- Besta deild karla (Icelandic top flight) approved by the user on 2026-07-20. Smaller league — market liquidity is thinner, so the Step 7 reaffirmation on an approved book matters more, and "not offered on any approved book" is a live reason to skip a given match.

### UCL seasonal caveat — qualifying rounds vs. league phase

**League phase onward (September → final): full scope, no caveat.** Clubs have competitive form, most ties have H2H history, and the markets are the most liquid in football. This is the strongest data environment the system has access to.

**July–August qualifying rounds: expect to eliminate, but verify before doing so.** Scanning the 2026/27 Q2 first legs on 2026-07-21 established the pattern empirically — of the four ties with the best data depth and liquidity (Vikingur Reykjavík–H. Beer Sheva, Aarhus–Lech Poznań, Sturm Graz–Hearts, Fenerbahçe–Górnik Zabrze):

- **All four were first-ever meetings** — zero H2H, which is a Filter 1 hard elimination on its own.
- **"Form" was preseason friendlies against mismatched opposition.** Sturm Graz's last five: 2-6 vs LNZ Cherkasy, 5-1 vs Sanfrecce Hiroshima, 4-1 vs amateur Kalsdorf. Aarhus's last competitive league match was over two months old. This is exactly the outlier data the Step 3 Outlier Rule says to exclude from probability assessment — and once excluded, nothing is left to assess.
- The remaining ties on that card were **worse** on both data depth and liquidity, several being heavy mismatches (Mjällby–Lincoln Red Imps, Larne–Crvena zvezda).

The structural cause: in July the Danish, Polish, Austrian, Scottish, Swedish and Icelandic seasons are starting, on break, or in preseason, and the qualifying draw pairs clubs that have no shared history.

This is a **strong prior, not a blanket exclusion.** Qualifying ties still get scanned and still get checked individually — a tie between two mid-season clubs with real H2H is a legitimate candidate. What the caveat forbids is assessing a probability off preseason friendly scorelines.

Competition-type exclusions are **not** a blanket rule. Exclusion must be justified match-by-match on data depth, market liquidity, and H2H history — never assumed without actually searching first.

### Opening-round / early-tournament caveat (Denmark, Poland, Argentina, Mexico)

**Season openers and the first jornada/fecha of a new tournament are a form-light environment.** The 2026/27 Danish and Polish seasons open in late July; the Argentine Clausura and Mexican Apertura run on an Apertura/Clausura split, so their opening rounds carry no current-tournament form. In 2026 all four also restart close to the World Cup break, compounding the staleness.

- **H2H stays usable; "current-season form" does not.** On matchday one there is no league table to run the attack/defence-rate model on. Lean on H2H, the *previous* tournament's table as a quality baseline, and any cup form played during the gap — but never assess a probability off preseason friendlies.
- **This is a strong prior, not a blanket exclusion.** A fixture with deep H2H and a clear quality gap is still a legitimate candidate; what the caveat forbids is manufacturing an edge from form that doesn't exist yet.
- **Opening-day favourites are the worst bets** — same as the post-tournament-break caveat. Undercooked sides and cautious, cagey openers make short-priced favourites poor value and draws more likely; a low-total angle off deep H2H is usually more robust than backing a favourite.
- **Newly promoted sides** can create effective first-ever meetings (a Filter 1 concern) or wildly uncertain pricing — treat with extra caution.
- **Squad news still outranks the model** — the summer/winter transfer window reshapes squads, so verify team news from a fetched primary page per Step 3.

-----

## Approved Sportsbooks (for actual-odds confirmation)

bet365, FanDuel, BetMGM, DraftKings, Sports Interaction, Unibet

Odds from any other book are not valid for the Step 7 reaffirmation. If a match isn't offered on an approved book, that's itself grounds to skip it.

-----

## Step 0: Get the Current Time

**Before anything else**, confirm the exact current time and date in CET. Never assume it. All kick-off gate checks depend on it.

-----

## Step 1: Scan Today's Card

### 24-Hour Pick Window

Scan **all matches kicking off within the next 24 hours** from the current moment.

|Region              |Typical CET kick-off window|
|--------------------|---------------------------|
|Asia / Australia    |06:00–13:00                |
|Middle East / Africa|14:00–17:00                |
|Europe              |18:00–22:00                |
|South America       |22:00–02:00                |

**Optimal time to ask for a pick: 14:00–15:00 CET.**

Always state kick-off time and placement deadline:

> ⏰ Kick-off: 20:45 CET — place before 20:30

When two picks are equally strong, prefer the later kick-off.

**⚠️ KICK-OFF GATE — mandatory first check for every match:**
- Already started or finished → discard immediately
- Less than 1 hour away → discard immediately
- This happens before form, H2H, odds, or anything else

### What to scan

- World Cup 2026 fixtures (all stages)
- Champions League and Europa League (see the seasonal caveat in Scope above before researching qualifying-round ties)
- MLS, Brasileirão Série A, Brazil Série B, Argentina Liga Profesional, Mexico Liga MX
- CONMEBOL Copa Sudamericana (check the first-leg aggregate before researching a two-legged tie — see the two-legged-tie caveat in Scope above)
- Danish Superliga + 1. division, Polish Ekstraklasa (see the opening-round caveat in Scope above)
- Approved supplement leagues (see Scope above)

**Search queries (fixture lists only — not tipster sites):**
- `football matches today [date] fixtures kick-off times`
- `football matches tomorrow [date] fixtures`

### Mandatory Full Card Output

Before any filtering, list every match in the window with kick-off time and gate status:

```
FULL CARD — [date] window (current time: [CET])
1. [Match] | KO: [time CET] | Gate: ✓ upcoming / ✗ already started
...
```

Do not skip this output.

-----

## Step 2: Filter the Card

### Filter 1 — Hard Eliminations (instant, no research needed)

Discard immediately if any apply:
- ✗ Kick-off gate failed
- ✗ Either side is FIFA rank 100+ (unless data depth is specifically confirmed — don't assume, check)
- ✗ Dead rubber — both teams eliminated, nothing at stake, rotation certain
- ✗ First-ever meeting between clubs, no comparable fixture data (unless odds are exceptional)
- ✗ Match not offered on any approved sportsbook

**Do not assert "insufficient data" or "can't research this" as a reason to eliminate without actually running the searches first.** This has caused false eliminations before — verify, don't assume.

### Filter 2 — Market Scan + Context

For every Filter 1 survivor, pull odds across all markets:

```
MARKET SCAN — [Match]
Over 2.5:        [odds] — angle: [one line or "none"]
Under 2.5:       [odds] — angle: [one line or "none"]
BTTS Yes:        [odds] — angle: [one line or "none"]
BTTS No:         [odds] — angle: [one line or "none"]
Asian Handicap:  [odds] — angle: [one line or "none"]
HT Under 1.5:    [odds] — angle: [one line or "none"]
1X2 / DC:        [odds] — angle: [one line or "none"]
```

Discard if:
- ✗ No market lands naturally near 2.00
- ✗ No plausible independent angle across any market
- ✗ Insufficient primary source data to research it properly
- ✗ **Sources contradict each other on basic facts** (H2H records, points totals, etc.) — this is a data quality failure, not something to resolve by averaging. Skip.

**This rule applies to disagreement between sources of comparable standing — not to a primary source disagreeing with an unreliable one.** Before invoking it, check three things:

- **Is one source simply stale?** Compare the deltas. If two records differ by exactly N wins and N games, that is a snapshot taken N rounds ago, not a contradiction. Use the current one.
- **Is the disagreeing source even allowed here?** A tipster aggregator is banned as a primary source, so it cannot create a contradiction with an authoritative table. Discard it and proceed.
- **Is it actually a known quirk?** FotMob and similar list *all* fixtures including friendlies, so a "last 5" spanning a break will mix them in. The Step 3 Outlier Rule says filter those out — that is not a data quality failure.

On 2026-07-22 both Eliteserien matches were wrongly eliminated under this rule. ESPN's table and an odds aggregator differed on Lillestrøm and Viking by exactly two games each — a stale snapshot — and the aggregator's prose claim ("third, two points behind") was wrong against its own numbers. One authoritative source and one banned one is not a contradiction. The error killed the only competition on that card with fresh competitive data and no tournament-break staleness.

**Survivors proceed to deep research in ranked order** — highest angle first.

### Anti-Bias Rule

**Never default to a market type.** The market scan must be complete before any market is selected. The chosen market must include:

> "Preferred over [rejected market] because [reason]."

**If the same market type would be picked three times consecutively**, a written steelman for the opposing market is mandatory before confirming.

### Skip Day Rule

A skip day is legitimate in exactly two cases:

1. **No match survives Filter 2.**
2. **Every Filter 2 survivor then fails Step 3** — because its evidence block cannot be filled from fetched primary sources, or because the arguments, once written, don't support the bet the model liked.

Otherwise the day produces a pick — best available, even if EV is only marginal. Reaching deep research is **not** by itself a commitment to bet; Step 3 and Step 6 are allowed to eliminate a match, and if they eliminate all of them the day is a skip.

**Log the reason in the skip row's `Type`**, distinguishing the two cases — e.g. `SKIP - ingen kant efter research` vs `SKIP - team news ej tilgaengelig`. The distinction matters: repeated skips of type 1 mean the card is thin, while repeated skips for unavailable primary sources mean a **research-access problem** that needs fixing rather than a run of quiet days. Track which is accumulating.

**This rule was rewritten on 2026-07-22**, when it contradicted Step 3 for the first time. Four Brazilian matches reached deep research, and all four had an unfillable TEAM NEWS block. The old wording ("if any match reaches deep research, the day produces a pick") forced a bet off evidence that didn't exist — which is the exact mechanism that produced fake EV over the first 39 bets. Step 3 wins that conflict.

-----

## Step 3: Deep Research

Full evidence block from **primary sources only**.

### Mandatory Source Rules

**Allowed primary sources:**
- Flashscore / Sofascore / Fotmob / FotMob — results, goals, stats
- Official club/FA websites and social media
- OddsPortal / Oddschecker / BetExplorer — odds and line movement
- Official league/competition stats pages
- RTE Sport, FIFA.com
- Wikipedia — for sourced match histories only

**Banned as primary sources (probability estimation):**
- Tipster aggregator sites: MightyTips, FootballWhispers, PredictZ, GoalGoalTips, SportsGambler, RatingBet, Footballsuper.tips, and similar
- Any site whose primary output is "our prediction is X"
- These may be used only at the END as a raw-odds cross-check — never as the basis for a probability estimate. Bookmakers already price in whatever these sites say, so consensus built from them has no edge.

### Team news must come from a page you actually opened

**A search engine's synthesized answer is not a source.** The summary text a search returns is a paraphrase across whatever it found — including the banned tipster layer — and it silently merges facts from different fixtures. Team news is only usable if it comes from a page that was **fetched and read**, with the outlet and article date known.

This rule exists because of 2026-07-22. A search summary reported that São Paulo were missing Wendell and "Luciano Neves" to suspension for their round 19 match. Fetching the actual source showed Gazeta Esportiva, 23 May 2026: Luciano and Wendell were booked against Botafogo in round 17 while on disciplinary probation, and served that suspension in **round 18, against Remo**. Both were available for the match the pick was built on. The summary had grafted a round-18 absence onto a round-19 preview and mangled the player's name. That absence list was the second key argument of the day's pick.

**Stop signals — treat any of these as the news being unverified:**
- A named player who does not appear in that club's squad (on 2026-07-22 the same summary listed "Cauly," a Bahia player, among São Paulo's absentees).
- A name that doesn't resolve cleanly to one player ("Luciano Neves" for Luciano).
- A stated reason that doesn't match a checkable event — a suspension with no bookable offence you can point to in a specific prior fixture.
- Detail that contradicts something already established about the fixture (the same day, a summary placed a player as not travelling to a stadium the match had already been moved away from).

**If TEAM NEWS cannot be filled from a fetched primary page, the match is eliminated** — it does not proceed on partial evidence. Club sites frequently carry only ticketing information, and Brazilian outlets in particular return 403 to fetches; when that happens the honest outcome is elimination, not a pick with a guessed injury list.

**Absence lists are the highest-leverage input on the card and the easiest to get wrong.** They move prices more than form does, which is exactly why an unverified one manufactures fake edge so efficiently.

### When the model disagrees with the market, suspect yourself first

A season-aggregate model that says a side is underpriced by 3–6 points is usually detecting **information the market has and you don't** — typically team news — not a market error. Before treating such a gap as edge, name the specific thing you know that the market has failed to price. If you can't name it, the gap is not edge.

On 2026-07-22 every apparent edge on the Brazilian card had this shape, and the one that could be checked resolved against the model: Palmeiras drifting to 2.00 away at 7th was the market pricing four missing attackers, not a mistake.

### Mandatory Evidence Block

```
EVIDENCE — [Team A]
Last 6 results (source: Flashscore/Fotmob):
  1. [Date] vs [Opponent] [Score] — GF/GA — Over/Under 2.5
  ...
Goals scored last 6: X | Goals conceded last 6: Y
Over 2.5 in last 6: X/6 | Clean sheets: X/6
Notable context: [outliers flagged and explained]

EVIDENCE — [Team B]
[same format]

H2H last 5 meetings (source: Flashscore):
  1. [Date] [Score] — total goals: X
  ...
H2H Under 2.5 rate: X/5

TEAM NEWS (source: official channels / primary outlets):
- [Player]: [status]

ODDS MOVEMENT (source: OddsPortal/Oddschecker):
- [Chosen market] opened: X.XX | Current: X.XX | Direction: drifting/shortening
- Sharp money signal: [what the movement suggests]
```

If the evidence block cannot be filled from primary sources, skip this match and move to the next survivor.

### Outlier Rule

Heavy mismatches, 10-men matches, dead rubbers within the sample must be flagged explicitly and excluded from the probability assessment.

-----

## Step 4: Assess True Probability

Assign a **true probability estimate (%)** with one-sentence justification, from the evidence block only — never from tipster consensus.

> Example: Under 2.5 — assessed at 54%. Algeria 4/6 meaningful matches under, 0-0 vs Uruguay most recent comparable, Netherlands rotating heavily with 4 key absences confirmed.

### Credibility Haircut for Market Gaps

If assessed probability deviates dramatically from market-implied probability (1/odds), that's a credibility concern, not a free edge. Apply a haircut toward the market price and flag the discrepancy explicitly in the notes — don't take a huge apparent EV at face value.

### Knife-Edge Rule for Under 2.5 (and Over 2.5)

**A goal-total bet where the realistic outcome is "2 or 3 goals" is a coin flip, not an edge.** The single most common total in football is exactly 3 goals — the first number that beats an Under 2.5. Bets that resolve right on the 2.5 line have a true Under probability near 50%, and at odds ~2.0–2.4 that is roughly break-even before variance.

Empirical basis (first 14 Under 2.5 bets logged): 10 of 14 landed on exactly 2 or 3 goals — the two numbers straddling the line — versus a ~40% base rate. The book read "low-scoring" games correctly but selected knife-edge games, and assessed them at 55–58% when the true number was ~50%. That 5–8 points of overconfidence manufactured fake EV and produced a −20% ROI.

**Rules:**
- Do **not** assess an Under 2.5 above ~52% unless the *comfortable* outcome (0–1 total goals) is genuinely likely — i.e. two low-xG, defensive sides, not merely "probably won't be a shootout."
- If the honest read is "this could easily be 2-1" (or 1-2), that is a knife-edge total. Cap the assessed probability at market-implied, or skip the market — do not bet into it at a claimed edge.
- The template Unders are games where both teams are anemic and a third goal is genuinely unlikely, not games that "lean under." When in doubt, the third goal drops.
- This rule is symmetric: an Over 2.5 whose realistic outcome is "2 or 3 goals" is the same coin flip from the other side.

-----

## Step 5: Calculate EV and Select Best Pick

```
EV% = (true_prob × (odds - 1)) - (1 - true_prob)
EV% × 100 for percentage display
```

|EV%     |Assessment (for ranking picks, NOT for stake size)|
|--------|--------------------------------------------------|
|Below 0%|Poor — only pick if nothing better on the card    |
|0–4%    |Marginal                                          |
|4–10%   |Good value                                        |
|10%+    |Strong value                                      |

**EV ranks which pick to take — it does NOT set the stake.** Stake is a flat % of bankroll regardless of EV (see Step 8). Do not increase the stake for high EV: over the first 39 bets, higher claimed EV *underperformed*, so scaling stake with EV lost money. Higher EV means "prefer this pick," not "bet more on it."

Calculate EV for all researched candidates. Select the highest-EV pick. No skip threshold once matches have cleared Filter 2.

-----

## Step 6: Deliver the Pick

### Write the arguments BEFORE quoting the EV

**Draft KEY ARGUMENTS and MAIN RISK first, then state the assessed probability and EV.** Not the other way round. The arguments are not write-up decoration for a decision already made — they are the check that catches a bet the model likes and the football doesn't.

Once drafted, ask honestly: **do these three arguments, against that risk, support the probability the model produced?** If they don't, the assessed probability moves to where the arguments put it, and the EV is recalculated from the moved figure. **The arguments are allowed to kill the pick**, in which case go to the next survivor or skip the day (see the Skip Day Rule).

If a bet cannot be argued for in three sentences without leaning on the model output itself, there is no pick.

This was added on 2026-07-22 after a pick was delivered with the model table filled in and the KEY ARGUMENTS block simply omitted. When the arguments were written out afterwards, on request, they immediately surfaced what the season-aggregate model was blind to — two wins in the last ten H2H meetings and a clearly worse recent competitive run — which moved the assessment from 34.1% to ~32% against a break-even of 32.3%. The claimed +5.7% EV was actually about −1%. The block had been treated as paperwork; it was the thing that would have caught the bet.

```
MATCH: [Team A vs Team B]
COMPETITION: [League / Tournament]
MARKET: [chosen market]
MARKET PREFERRED OVER: [rejected market] because [reason]
TARGET ODDS: ~2.00
⏰ Kick-off: [time CET] — place before [time]

KEY ARGUMENTS:
1. [Form/H2H argument]
2. [Context argument]
3. [Market movement argument]

MAIN RISK: [One honest counter-argument]

ASSESSED TRUE PROB: [X]%   ← after weighing the arguments above against the risk
EV AT TARGET ODDS: +[X]%
```

The probability and EV lines sit at the bottom deliberately. They are the **conclusion** of the arguments, not the premise.

-----

## Step 7: Reaffirm at Actual Odds

User reports actual odds from an approved sportsbook. Recalculate EV from scratch using the actual figure:
- EV positive → confirm the bet
- EV negative → note it, but this is still the day's best available pick
- Always document odds movement direction and what it signals, and adjust the stake tier if EV moved to a different band

-----

## Step 8: Assign Stake

### Current rule: flat 4% of bankroll — NOT EV-scaled

**Stake a flat 4% of current bankroll on every pick, regardless of EV.** A single fixed rate — no per-bet judgment. Take the previous row's `Bankroll` from `bets.org`, multiply by 0.04, round to the nearest 0.5 kr.

> Example: bankroll 249.0 → 249 × 0.04 = 9.96 → **stake 10 kr**, whatever the EV.

Bankroll-proportional (the stake rises and falls with the bank), but it does **not** scale with EV. The 4–5% band was deliberately collapsed to a single 4% figure so that no discretion re-enters through stake sizing.

Why not EV-scaled yet: an EV-scaled ladder is only correct if higher EV actually wins more. Over the first 39 bets it did the opposite — claimed edge was mildly *anti*-correlated with results (corr ≈ −0.13), and the highest-EV band (15–25%) ran −61% ROI. Simulating an EV-scaled ladder on that history **underperformed flat staking** (+24.9 vs +40.6) while producing a larger drawdown, because it funnels the most money into the least reliable signal. Staking cannot manufacture edge; it only amplifies or dampens whatever calibration you already have. Until EV is calibrated, flat staking is the honest position.

**Hard cap:** never exceed 5% of current bankroll on a single pick, regardless of EV.

### Revisit trigger — graduate to EV-scaling only when earned

At ~60 logged bets, re-run the staking simulation. **Only** move to an EV-scaled ladder if the high-EV columns are then profitable. If they are, use a *compressed* ladder (~3% of bank at low EV → ~5% at high EV), never the aggressive 3%→10% version (10% ≈ full Kelly on overconfident estimates — too much risk of ruin). If high EV is still red, EV-scaling stays retired and flat staking continues.

Log the EV every time regardless — it's the data that decides whether EV-scaling is ever justified.

### One pick per day — revisit trigger (multi-bet)

**One pick per day is the rule until the edge is calibrated — gated on the same ~60-bet check as EV-scaling.** A second bet is by construction your *lower*-ranked pick, and over the first 39 bets claimed EV was anti-correlated with results (corr ≈ −0.13). Adding a second bet a day amplifies an uncalibrated signal through breadth exactly as an EV-scaled stake would through size — the same mistake in a different dimension.

**Availability is not the constraint — bankroll discipline is.** The 24-hour window routinely holds several non-overlapping matches (a 16:00 Eliteserien pick settles long before a 22:00 South-American kick-off), so "there were more good games today" is always true and is not a reason to bet more. Two flat 4% bets put 8% of bank in play in a day — past the 5% single-pick hard cap in spirit.

**Revisit at ~60 logged bets, together with the EV-scaling check.** Only move to more than one pick per day if, at that point, the high-EV picks are profitable — the same condition that gates EV-scaling. If the edge is real by then, added *independent* volume is genuinely +EV, and sequential non-overlapping fixtures are near-uncorrelated, so a qualifying second pick diversifies variance rather than stacking it. If the edge is still uncalibrated, multi-bet stays retired and one pick per day continues.

If it graduates, only under these constraints:
- **A second bet only if it independently clears Filter 2 and Step 3 with real edge** — never a filler pick to "use the window." The Skip Day Rule tolerates a marginal *primary* pick; a second bet is optional exposure and must clear a genuine-edge bar, not a marginal one.
- **Cap exposure by day, not by bet** — a daily budget (e.g. 4% total split across picks, or a hard daily cap ~6%), so breadth never quietly exceeds the single-bet risk limit.
- **Anti-Bias and arguments-before-EV apply per bet.** More slots is more room to rationalize a weak pick in, so the discipline bar rises — it does not relax.

Until that trigger fires, the answer to "there are more good matches today" is still one pick.

-----

## Step 9: Log the Bet

**The skill's job is only to hand the user clean, paste-ready values** — it does not decide the result or auto-run anything. The user chooses how to enter them:

- **Manually**, directly into the `bets.org` table (the default), or
- **Via `rake`**, which drives the org table through `emacsclient`:

  ```
  rake bets:upsert ROW=<n> DAG=DD-MM-YY KAMP="Team A - Team B" TYPE="U. 2.5" \
       EV=<ev> ODDS=<odds> INDSATS=<stake>
  ```

  Pass only the input columns; `#`, `Vundet`, `Saldo`, and `Bankroll` are recomputed by the table's `#+TBLFM`. Partial updates work — after the match, set the win flag: `rake bets:upsert ROW=<n> RESULTAT=1-2 WON=0` (`WON=1` win/void, `0` loss). See `Rakefile` and `JuniSystemet/bets-table.el`.

Either way, the skill still only produces the values; it never chooses the result or the stake for the user.

The `bets.org` table has these columns:

`# | Dag | Kamp | Type | EV | Resultat | Odds | Indsats | Vundet | W | Saldo | Bankroll`

The user manually enters:
- **Dag** — date (DD-MM-YY)
- **Kamp** — match (Team A - Team B)
- **Type** — chosen market (e.g. `U. 2.5`, `O. 2.5`, `BHS: Nej`)
- **EV** — the reaffirmed EV% at actual odds
- **Odds** — actual odds taken
- **Indsats** — stake (flat % of bankroll per Step 8)
- **Resultat** — final score, entered after the match (e.g. `1-2`)
- **W** — win flag, entered after the match: `1` = won or void/push, `0` = lost (or still pending). This is the only result input needed; Vundet is derived from it.

Auto-computed by the table's `#+TBLFM` formula — **do not enter these**: `#` (row number), **`Vundet`** (= `floor(2 × Odds × Indsats) / 2 × W` — the win return rounded **down** to the nearest 0.5 kr as the provider does, or 0 when `W=0`), `Saldo` (running P&L), `Bankroll` (running balance). The flooring means e.g. 7 × 1.95 = 13.65 → **13.5**, 13 × 1.87 = 24.31 → **24.0**, 10 × 2.05 = 20.5 → **20.5**.

When delivering a pick, present these values ready to paste so the user can log in one step. A skip day is logged as a row with `Indsats` = 0 and a note in `Type`/`Kamp` explaining why.

-----

## Notes

- One pick per day maximum (until the gated multi-bet revisit in Step 8 triggers at ~60 bets)
- A skip day is only valid when no match survives Filter 2
- Track ROI over a minimum of 50 bets before drawing conclusions about edge
- Reassess probability methodology if win rate diverges significantly from assessed probabilities over 30+ bets
- Project memory/search is scoped per-project — cross-project comparison (e.g. vs. "Maj Systemet") requires manually pasting stats in, there's no technical way to bridge project spaces

-----

## Changelog vs. prior DAGENS-SPIL-SKILL.md

Added: approved sportsbooks list, approved supplement leagues + Allsvenskan pending status, expanded primary/banned source lists (RTE Sport, FIFA.com, Wikipedia; SportsGambler, RatingBet, Footballsuper.tips), data-quality-failure skip rule, "don't assert inaccessibility without searching" rule, market-gap credibility haircut, note on cross-project memory scoping. Staking ladder: intentionally left undefined — decision pending, do not apply a specific mapping until confirmed.

Later addition (after 39-bet review): **Knife-Edge Rule for Under 2.5 / Over 2.5** in Step 4. Added after analysis showed Under 2.5 running −20% ROI driven by knife-edge selection — 10 of the first 14 Unders landed on exactly 2 or 3 goals, with the model assessing ~57% where the true number was ~50%. Rule caps Under assessments near market-implied unless the 0–1 goal outcome is genuinely likely.

**Step 9 logging moved off the old tracker.** Bets are logged into `bets.org` (org-mode table with an auto-computing `#+TBLFM`), replacing the old `dagens-spil.jsx` / `initialBets` tracker. The skill only hands the user paste-ready values; `#`, `Saldo`, and `Bankroll` are auto-computed by the table formula. Entry can be done manually or via `rake bets:upsert` (driving the table through `emacsclient`; see `Rakefile` / `JuniSystemet/bets-table.el`) — either way the skill never chooses the result or stake.

**2026-07-20: Allsvenskan approved** by the user, moving it from "pending formal approval" into the approved supplement-league list.

**2026-07-20: Besta deild karla (Iceland) approved** by the user and added to the supplement leagues, with a thin-liquidity caveat.

**2026-07-21: UEFA Champions League approved** by the user, with a seasonal caveat written into the Scope section. League phase onward is full scope. July–August qualifying rounds carry a strong prior toward elimination, grounded in an actual scan of the 2026/27 Q2 first legs that day: the four best-data ties on an eleven-match card were all first-ever meetings with no H2H, and their only recent form was preseason friendlies against mismatched opposition. The caveat is a prior, not a blanket exclusion — qualifying ties are still scanned and checked individually. Scope now: World Cup 2026 + Champions League + Eliteserien, League of Ireland, Superettan, Allsvenskan, Besta deild karla.

**2026-07-22: MLS, Brasileirão Série A and UEFA Europa League approved** by the user. Europa League inherits the UCL seasonal caveat (July–August qualifying = strong prior toward elimination, still scanned individually). MLS and Brasileirão are mid-season with real competitive form and deep H2H, so they carry no caveat — Brasileirão kick-offs land in the 22:00–02:00 CET window. Scope now: World Cup 2026 + Champions League + Europa League + MLS + Brasileirão Série A + Eliteserien, League of Ireland, Superettan, Allsvenskan, Besta deild karla.

**2026-07-22: post-tournament-break caveat added** to Scope, from the first run over the new leagues. Both MLS and the Brasileirão resumed days after the World Cup final, so the whole 15-match MLS card was eliminated on ~7-week-stale form plus wholesale rotation of returning internationals, and the four Brazilian survivors had to be priced off the season table with squad news overriding the model. Codifies: season table stays valid, "last 6" lists do not, absence lists outrank the model, short-priced favourites are the worst bet on matchday one. Same run also confirmed the existing Filter 2 data-quality rule earns its keep — both Eliteserien matches were eliminated because sources disagreed on table position, points, games played and recent form, with break friendlies mixed into aggregator form lists.

**2026-07-22 (second revision, after the day's run went wrong): four process rules added.** The day produced no bet, and the post-mortem produced these:

1. **Team news must come from a fetched primary page** (Step 3) — never a search engine's synthesized summary. A summary reported São Paulo missing Wendell and "Luciano Neves" to suspension; the real source was a 23 May article about a round-18 suspension against Remo, and both players were available for the round-19 match the pick rested on. Includes stop signals (a name not in the squad, an unresolvable name, an uncheckable reason) and makes an unfillable TEAM NEWS block an elimination. Paired with a rule that a 3–6 point model-vs-market gap should be read as information the market has and you don't, unless you can name the specific thing it failed to price.
2. **Skip Day Rule rewritten** (Step 2) — a skip is now also legitimate when every Filter 2 survivor fails Step 3. The old wording forced a pick once anything reached deep research, which on this card meant betting off four unfillable evidence blocks. Skip reasons are logged by type so that unavailable-source skips surface as a research-access problem rather than a run of quiet days.
3. **Arguments are written before the EV is quoted** (Step 6), and are allowed to kill the pick. Delivered a Lillestrøm pick at a claimed +5.7% with the KEY ARGUMENTS block omitted; writing it out afterwards surfaced a 2-from-10 H2H record and a worse recent run, moving the assessment to ~32% against a 32.3% break-even — the real EV was about −1%. Template reordered so probability and EV sit below the arguments as their conclusion.
4. **Filter 2 data-quality rule scoped** — it covers disagreement between sources of *comparable standing*, not a primary source disagreeing with a banned one. Both Eliteserien matches were wrongly eliminated on what turned out to be a two-round-stale aggregator snapshot, discarding the only fresh-data competition on the card. Adds the stale-delta check, the banned-source check, and the friendlies-in-form-lists quirk.

Also (same 39-bet review): **Step 8 staking ladder resolved to a flat 4% of bankroll, NOT EV-scaled** (band pinned to a single 4% figure to remove per-bet discretion; hard cap 5%). A proposed EV-scaled ladder (3%→10% of bank) was simulated against the 39-bet history and underperformed flat staking (+24.9 vs +40.6) with a larger drawdown, because claimed edge was anti-correlated with results — high EV columns lost. Hard cap lowered from "15 kr / 3% of 500" to "5% of current bankroll." Revisit trigger added: reconsider EV-scaling only at ~60 bets, and only if high-EV columns are profitable by then; if so, use a compressed 3%→5% ladder, never the aggressive 3%→10% version.

**2026-07-25: gated multi-bet rule added to Step 8.** The user asked whether a deep card (e.g. an early-evening Eliteserien pick that settles before the South-American window opens) justifies more than one bet a day. It does not, yet — one pick per day is retained as the rule, gated on the *same* ~60-bet calibration check as EV-scaling, and for the same reason: a second bet is your lower-ranked pick, and claimed EV was anti-correlated with results over the first 39 bets, so adding breadth amplifies an uncalibrated edge exactly as EV-scaled stake size would. Availability is explicitly *not* the constraint (the 24-hour window nearly always holds non-overlapping matches); bankroll discipline is — two flat 4% bets breach the 5% single-pick cap in spirit. If it graduates at ~60 bets (only if high-EV picks are profitable by then), it comes with constraints: a second bet must independently clear Filter 2 + Step 3 with real edge (no fillers), exposure is capped by day not by bet, and Anti-Bias / arguments-before-EV apply per bet. Purpose line and Notes cross-reference the trigger.

**2026-07-24: Denmark (Superliga + 1. division), Poland (Ekstraklasa), Argentina (Liga Profesional) and Mexico (Liga MX) approved** by the user and added to Scope, each on a day their matches were live in the window. A new **opening-round / early-tournament caveat** was written: the Danish and Polish 2026/27 seasons open in late July, and the Argentine Clausura Fecha 1 / Mexican Apertura Jornada 2 carry little current-tournament form, so the rate model can't run on opening matchdays — picks lean on H2H + previous-tournament baseline + any cup form, never preseason friendlies, and opening-day favourites are the worst bets. The day's run over the new leagues delivered Huracán–Banfield (an Argentine Fecha 1) as a low-total read: 6/6 recent H2H under 2.5 and two anemic attacks, but the book didn't offer U. 2.5 and BTTS No was a trap (Huracán score 8/9 at home vs Banfield), so the pick landed on Huracán to win @ 1.95. Scope now: World Cup 2026 + Champions League + Europa League + MLS + Brasileirão + Argentina Liga Profesional + Mexico Liga MX + Danish Superliga & 1. division + Polish Ekstraklasa + Eliteserien, League of Ireland, Superettan, Allsvenskan, Besta deild karla.

**2026-07-28: Brazil Série B and CONMEBOL Copa Sudamericana approved** by the user and added to Scope + the Step 1 scan list, each on a day their matches were in the window. Série B inherits the post-tournament-break caveat in full (it paused for the World Cup exactly as Série A did). Copa Sudamericana carries a new **two-legged-tie caveat**: check the first-leg aggregate before researching, because a lopsided aggregate (a side 2–3 goals up) makes the second leg a near-dead rubber with rotation risk on both sides — a Filter 1 dead-rubber concern. The day's run demonstrated it: both in-window Sudamericana second legs (Tigre–Nacional, Santos–Universidad Central) were eliminated on lopsided +3 aggregates, both in-window Série B Unders were priced through (Juventude–Avaí U. 2.5 @ 1.67), and the pick landed on Barracas Central to win @ 2.29 (Argentine Clausura Fecha 2) — a defensive home side vs a weak-away Aldosivi, with the Under 1.45 / BTTS-No ~1.50 pricing confirming a low-event game that suits the better home team. Scope now: World Cup 2026 + Champions League + Europa League + MLS + Brasileirão Série A + Brazil Série B + Copa Sudamericana + Argentina Liga Profesional + Mexico Liga MX + Danish Superliga & 1. division + Polish Ekstraklasa + Eliteserien, League of Ireland, Superettan, Allsvenskan, Besta deild karla.

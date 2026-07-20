# Juni Systemet (Dagens Spil) — Daily Bet Finding Skill

## Purpose

Find the single best value bet of the day targeting odds around 2.00, using a structured research and analysis process. Scope: 2026 FIFA World Cup + approved supplement leagues. One pick per day, no exceptions.

**⚠️ This version consolidates rules that were previously scattered across chat history and never written back into this file. See the changelog note at the bottom for what changed vs. the prior version.**

-----

## Scope: Approved Competitions

- 2026 FIFA World Cup (all stages)
- Approved supplement leagues: **Norwegian Eliteserien, League of Ireland, Superettan, Allsvenskan, Besta deild karla (Iceland)**
- Allsvenskan approved by the user on 2026-07-20 (was previously pending).
- Besta deild karla (Icelandic top flight) approved by the user on 2026-07-20. Smaller league — market liquidity is thinner, so the Step 7 reaffirmation on an approved book matters more, and "not offered on any approved book" is a live reason to skip a given match.

Competition-type exclusions (e.g. "UCL/UECL qualifying rounds") are **not** a blanket rule. Exclusion must be justified match-by-match on data depth, market liquidity, and H2H history — never assumed without actually searching first.

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

**Survivors proceed to deep research in ranked order** — highest angle first.

### Anti-Bias Rule

**Never default to a market type.** The market scan must be complete before any market is selected. The chosen market must include:

> "Preferred over [rejected market] because [reason]."

**If the same market type would be picked three times consecutively**, a written steelman for the opposing market is mandatory before confirming.

### Skip Day Rule

The **only legitimate skip day** is when no match survives Filter 2. If any match reaches deep research, the day produces a pick — best available, even if EV is only marginal.

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

```
MATCH: [Team A vs Team B]
COMPETITION: [League / Tournament]
MARKET: [chosen market]
MARKET PREFERRED OVER: [rejected market] because [reason]
TARGET ODDS: ~2.00
ASSESSED TRUE PROB: [X]%
EV AT TARGET ODDS: +[X]%
⏰ Kick-off: [time CET] — place before [time]

KEY ARGUMENTS:
1. [Form/H2H argument]
2. [Context argument]
3. [Market movement argument]

MAIN RISK: [One honest counter-argument]
```

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

-----

## Step 9: Log the Bet

**Logging is done manually by the user, directly into `bets.org`.** Do not attempt to write, edit, or auto-populate the tracker — the skill's job is only to hand the user clean values to type in.

The `bets.org` table has these columns:

`# | Dag | Kamp | Type | EV | Resultat | Odds | Indsats | Vundet | Saldo | Bankroll`

The user manually enters:
- **Dag** — date (DD-MM-YY)
- **Kamp** — match (Team A - Team B)
- **Type** — chosen market (e.g. `U. 2.5`, `O. 2.5`, `BHS: Nej`)
- **EV** — the reaffirmed EV% at actual odds
- **Odds** — actual odds taken
- **Indsats** — stake (flat % of bankroll per Step 8)
- **Resultat** — final score, entered after the match (e.g. `1-2`)
- **Vundet** — amount returned: `Indsats × Odds` on a win, `0` on a loss

Auto-computed by the table's `#+TBLFM` formula — **do not enter these**: `#` (row number), `Saldo` (running P&L), `Bankroll` (running balance).

When delivering a pick, present these values ready to paste so the user can log in one step. A skip day is logged as a row with `Indsats` = 0 and a note in `Type`/`Kamp` explaining why.

-----

## Notes

- One pick per day maximum
- A skip day is only valid when no match survives Filter 2
- Track ROI over a minimum of 50 bets before drawing conclusions about edge
- Reassess probability methodology if win rate diverges significantly from assessed probabilities over 30+ bets
- Project memory/search is scoped per-project — cross-project comparison (e.g. vs. "Maj Systemet") requires manually pasting stats in, there's no technical way to bridge project spaces

-----

## Changelog vs. prior DAGENS-SPIL-SKILL.md

Added: approved sportsbooks list, approved supplement leagues + Allsvenskan pending status, expanded primary/banned source lists (RTE Sport, FIFA.com, Wikipedia; SportsGambler, RatingBet, Footballsuper.tips), data-quality-failure skip rule, "don't assert inaccessibility without searching" rule, market-gap credibility haircut, note on cross-project memory scoping. Staking ladder: intentionally left undefined — decision pending, do not apply a specific mapping until confirmed.

Later addition (after 39-bet review): **Knife-Edge Rule for Under 2.5 / Over 2.5** in Step 4. Added after analysis showed Under 2.5 running −20% ROI driven by knife-edge selection — 10 of the first 14 Unders landed on exactly 2 or 3 goals, with the model assessing ~57% where the true number was ~50%. Rule caps Under assessments near market-implied unless the 0–1 goal outcome is genuinely likely.

**Step 9 logging changed to manual.** Bets are now logged by the user directly into `bets.org` (org-mode table with an auto-computing `#+TBLFM`), replacing the old `dagens-spil.jsx` / `initialBets` tracker. The skill no longer writes the tracker — it only hands the user paste-ready values; `#`, `Saldo`, and `Bankroll` are auto-computed by the table formula.

**2026-07-20: Allsvenskan approved** by the user, moving it from "pending formal approval" into the approved supplement-league list.

**2026-07-20: Besta deild karla (Iceland) approved** by the user and added to the supplement leagues, with a thin-liquidity caveat. Scope now: World Cup 2026 + Eliteserien, League of Ireland, Superettan, Allsvenskan, Besta deild karla.

Also (same 39-bet review): **Step 8 staking ladder resolved to a flat 4% of bankroll, NOT EV-scaled** (band pinned to a single 4% figure to remove per-bet discretion; hard cap 5%). A proposed EV-scaled ladder (3%→10% of bank) was simulated against the 39-bet history and underperformed flat staking (+24.9 vs +40.6) with a larger drawdown, because claimed edge was anti-correlated with results — high EV columns lost. Hard cap lowered from "15 kr / 3% of 500" to "5% of current bankroll." Revisit trigger added: reconsider EV-scaling only at ~60 bets, and only if high-EV columns are profitable by then; if so, use a compressed 3%→5% ladder, never the aggressive 3%→10% version.

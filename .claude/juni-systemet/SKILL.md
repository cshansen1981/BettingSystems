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
- **Argentina Primera Nacional** — approved by the user on 2026-08-05, after a Gimnasia y Esgrima (Jujuy)–Quilmes fixture surfaced on the Step 1 scan (ESPN lists it under the legacy label "Argentine Nacional B" — this is Primera Nacional, Argentina's second tier). 36 teams split into two 18-team zones; within a zone the schedule is a **double round-robin** (home and away), so in-zone H2H is deep by construction — but a chunk of the calendar is **interzonal** fixtures between teams in different zones, played only once, which is thin H2H exactly like the Romanian single round-robin problem. Check which type a fixture is before trusting H2H depth. **Promotion structure is a Filter 1 dead-rubber risk**: each zone's winner meets in a final for direct promotion, and 2nd–8th in each zone enter a knockout (Torneo Reducido) for the second promotion slot — mid-table teams with the Reducido mathematically out of reach, and bottom-of-zone teams with relegation already decided, are rotation/dead-rubber candidates late in the season. Kick-offs follow the Argentine window like Liga Profesional (South American window, ESPN's schedule pages show them in ET — add 6 hours for CET/CEST). **Liquidity is unverified — this is a second division, so confirm the fixture is actually offered on an approved book before doing any research on it** (the same "not offered = skip" rule as any other league, but worth flagging explicitly since top-flight Argentine coverage on approved books doesn't guarantee second-tier coverage).
- **English EFL Cup (Carabao Cup)** — approved by the user on 2026-08-05, after Bristol City–Walsall (Round 1) surfaced on the Step 1 scan. Straight knockout across all four English divisions (Premier League joins from Round 2), single match at one club's ground through to the semi-finals (which go two-legged) — no replays, and **new for 2026/27: no extra time**, drawn ties go straight to penalties after 90 minutes. Two Filter 1/2 concerns specific to a cross-tier cup:
  - **Cross-divisional quality gaps are the norm, not the exception, in the early rounds.** A Championship or Premier League side drawn against League One/Two opposition is a routine pairing, not a mismatch to explain away — check the actual gap (divisions apart, not just names) before assuming a market near 2.00 exists at all; often nothing does in the 1X2 market and the only workable line is deep in the Asian handicap or a scoreline market.
  - **Rotation risk cuts against the bigger club, not for it — but is not automatic.** The competition is a low priority for top-flight sides, so a "big favourite" price can be softer than the tier gap implies if the manager rotates. This is squad-news territory exactly like the post-tournament-break caveat: check confirmed or strongly-previewed lineups before trusting the price, don't assume rotation happened just because the competition allows it. First matches of a new manager's tenure (as at Bristol City for Round 1 2026/27) are more likely to see a stronger XI than a routine round 3+ tie later in the season, since a new manager wants competitive minutes and a good start.
  - No seasonal/opening-round caveat applies — this is a cup, not a league table, so there's no "form-light" concept; H2H (if it exists at this tier gap) and current-season form both stay usable.
- **Romanian SuperLiga (Liga I)** — approved by the user on 2026-08-03. 16 teams, deep H2H between long-established clubs, good liquidity on approved books. Romanian local time is CET+1, so kick-offs land in the European window, roughly 17:00–20:30 CET. Two structural quirks to carry into research:
  - **The regular season is a *single* round-robin (15 rounds), then a championship play-off (top 6) and relegation play-out (bottom 10) with points halved and rounded up.** So within a campaign two clubs meet only *once* before the split. Current-season H2H is therefore thin by construction — lean on prior seasons for H2H depth, and never treat "no meeting yet this season" as missing data.
  - **The halving at the split distorts the table.** After the split, points totals no longer describe the season played, so the attack/defence rate model must run on cumulative goal data, not on the displayed table. The play-out phase in particular manufactures dead rubbers once safety is mathematically settled — a Filter 1 concern.
  - The 2026/27 season opened on 18 July 2026, so the **opening-round caveat below applies** through the first handful of rounds.
- **Bulgarian Parva Liga (efbet League)** — approved by the user on 2026-08-03. 14 teams in 2026/27 (down from 16), season 17 July 2026 – 29 May 2027, double round-robin of 26 rounds before splitting into Championship / Conference League / Relegation groups. Bulgarian local time is CET+1, so kick-offs land in the European window, roughly 17:00–20:30 CET.
  - **This is the lowest-scoring league in scope: 2.3 goals per match in 2025/26.** Calibrate against that number, not against instinct — for comparison Iceland ran at 3.94, Denmark 3.1, Sweden 3.05, Romania 2.55. An Under 2.5 here is *normal*, not an edge, and the goals markets are priced accordingly. Never import a "low total" read from another league.
  - **Liquidity is thin and margins are wide.** Observed 1X2 payouts on approval day were 83–88%, against ~90% for the Allsvenskan. The wider the margin, the higher the true probability needed to clear break-even — combined with the payout flooring, short prices here are close to unplayable. The Step 7 reaffirmation on an approved book matters as much as it does for Iceland.
  - Verify whether points **carry or halve** at the group split before running any model on the displayed table — do not assume the Romanian halving rule applies.
  - The 2026/27 season opened 17 July 2026, so the **opening-round caveat below applies**.
- **Finnish Veikkausliiga** — approved by the user on 2026-08-03. 12 teams on a **calendar-year season (April–November)**, an 18-round regular season and then a split into a Championship round (top 6) and Relegation round (bottom 6). Finnish local time is CET+1, so kick-offs land early in the European window, roughly 17:00–19:00 CET. League scoring runs ~2.4–2.6 goals per match.
  - **Unlike the other summer-approved leagues, Finland is *mid-season* in July–August, not form-light.** By August it has a full 17–18-round table and deep H2H, which makes it a **rung 1** data environment on the League Ladder while Romania, Bulgaria, Denmark and Poland are sitting on rung 3. Do not lump it in with them.
  - **The 18-round split falls in early August.** Late regular-season rounds carry seeding stakes rather than being dead, but check where both sides sit relative to the top-six cut before assuming motivation is symmetric — and remember that after the split the same opponents recur quickly, so H2H can refresh mid-season.
  - **Finnish clubs are in European qualifying through July and August.** HJK were three days from a Conference League tie on the day the league was approved, and that rotation risk was the single most important input on their price. Check the European calendar before trusting a table-based model on any Finnish side.

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

### Opening-round / early-tournament caveat (Denmark, Poland, Romania, Bulgaria, Argentina, Mexico)

**Season openers and the first jornada/fecha of a new tournament are a form-light environment.** The 2026/27 Danish and Polish seasons open in late July and the Romanian SuperLiga on 18 July; the Argentine Clausura and Mexican Apertura run on an Apertura/Clausura split, so their opening rounds carry no current-tournament form. In 2026 all four also restart close to the World Cup break, compounding the staleness.

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
- Argentina Primera Nacional (check in-zone vs. interzonal fixture before trusting H2H depth, and check the Reducido/relegation math for dead rubbers — see Scope above)
- English EFL Cup (Carabao Cup) — cross-tier knockout, check the actual divisional gap and confirmed lineups before assuming a market near 2.00 exists (see Scope above)
- Romanian SuperLiga (single round-robin before the play-off/play-out split — see the two structural quirks in Scope above)
- Bulgarian Parva Liga (lowest-scoring league in scope at 2.3 goals/match, thin liquidity and wide margins — see Scope above)
- Finnish Veikkausliiga (calendar-year season, so **mid-season and rung 1** in July–August, unlike the other summer additions — see Scope above)
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

### League Ladder — exhaust the scope before declaring a skip

**A league producing no candidate is one league crossed off a list, not a result.** When every match in a competition dies at Filter 1, Filter 2, Step 3 or Step 6, move to the next competition on the ladder and work it to the same depth. The Skip Day Rule may not be invoked until every in-scope competition with matches in the window has been worked this way.

**Ladder position is research order, not eligibility.** A lower-ranked league is not a worse bet — it is a later look. A league's rung changes nothing about its stake, its EV bar, or its right to be the day's pick. On 2026-08-02 the pick came off rung 3 (Danish Superliga round 2) after both rung-1 Nordic leagues produced nothing.

**Derive the ladder fresh each day — never hardcode it.** League quality rotates with the calendar: Eliteserien is rung 1 in August and rung 3 in March. Rank by data environment:

1. **Full current-season table** (≈8+ rounds played), deep H2H, liquid on approved books. The attack/defence rate model can run on real data.
2. **Full table but degraded** — thin liquidity (Besta deild karla), or a form caveat in force (post-tournament-break: season table stays valid, "last 6" lists do not).
3. **Form-light** — opening rounds, first fechas/jornadas. H2H plus the previous season's or tournament's table as a quality baseline only. No rate model.
4. **Qualifying rounds / first-ever meetings.** Strong prior toward elimination, still checked individually.

**Depth per rung: a complete Filter 2 market scan on every Filter 1 survivor before moving on.** All of Over/Under, BTTS, Asian Handicap, HT, 1X2/DC — never a 1X2-only sweep. **A league is not eliminated until its goals markets have been priced.**

### Skip Day Rule

A skip day is legitimate in exactly two cases:

1. **No match survives Filter 2.**
2. **Every Filter 2 survivor then fails Step 3** — because its evidence block cannot be filled from fetched primary sources, or because the arguments, once written, don't support the bet the model liked.

Both cases require the **League Ladder** above to have been exhausted first. *"No pick in [league]"* is never a skip reason on its own.

Otherwise the day produces a pick — best available, even if EV is only marginal. Reaching deep research is **not** by itself a commitment to bet; Step 3 and Step 6 are allowed to eliminate a match, and if they eliminate all of them the day is a skip.

**Never log a skip.** A skip day produces **no row in `bets.org`** — that table holds only real bets. Do not write a zero-stake placeholder row: it consumes a bet number and a dummy `Odds` value corrupts `Gennemsnitsodds` and `Gevinst-%` in the stats table. Report the skip and its reason to the user in chat, and leave the table untouched — `Bankroll` simply carries forward to the next actual pick.

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

### EV is calculated from effective odds, never from the quoted price

The provider floors the payout to the nearest 0.5 kr (`Vundet = floor(2 × Odds × Indsats) / 2`). That truncation is real money, and EV computed off the quoted odds silently ignores it. **Always convert to effective odds first:**

```
effective_odds = floor(2 × Odds × Indsats) / 2 / Indsats

EV% = (true_prob × (effective_odds - 1)) - (1 - true_prob)
EV% × 100 for percentage display
```

> Example: 7 kr at 1.56 returns floor(2 × 1.56 × 7)/2 = 10.5, so effective odds are 10.5/7 = **1.50**, not 1.56. At an assessed 68%, EV is +2.0%, not +6.1%.

**The stake must therefore be computed before the EV** — Step 8's flat 4% of the previous row's `Bankroll` is deterministic, so calculate it first and carry it into this step. This does not reintroduce discretion: the stake still does not depend on the EV, only the arithmetic order changes.

Why this matters: the drag is `true_prob × 0.25 / Indsats` on average — at the current stake sizes roughly **1.5–2.5 percentage points off every bet**, biting hardest where the edge is thinnest and at short prices. Restating the first 51 bets on this basis moved the mean claimed EV from +10.78% to +8.53%, and flipped **eight** bets from claimed +EV to actually negative (#21, #25, #29, #32, #39, #43, #46, #50). Those eight were bets the system believed were value and which never were.

A consequence worth internalising: **a sub-1.60 price at these stakes needs a much bigger raw edge than it looks like it does.** Bet #47 (1.53) and bet #51 (1.56) both lost about 40% of their claimed EV to flooring alone.

### EV is computed for every market scanned — not just the one nearest 2.00

**Filter 2 gathers prices; Step 5 evaluates them. Gathering is not evaluating.** Put every market the scan returned through the EV formula, and rank the whole card by EV before selecting a pick or declaring a skip. **A league may never be eliminated on a single market's EV**, and a league's "best line" may not be reported until every one of its lines has a number.

The ~2.00 target decides which bets are *preferred*, not which get evaluated. A mispriced market at 2.30 or 3.25 is still the day's best pick; a correctly priced one at 2.00 is not.

Added 2026-08-03, after the Polish card was eliminated on one number. Cracovia–Pogoń had been scanned in full — 1X2, the whole O/U ladder, AH, BTTS, HT — but only Over 2.5, the line nearest 2.00, was ever run through the formula. It came out at −10.2%, the league was crossed off, and the day's summary reported −10.2% as Poland's *best* line. Cracovia to win at 2.32 was actually **−0.7% — the best number on the entire card** — and it surfaced only because the user asked why Poland had been left out. Re-auditing on the same basis then found SønderjyskE to win at 3.25 (−1.0%), never priced at all, because the Odense win probability had been calculated and the draw and away win simply skipped.

This is the League Ladder failure repeating one layer down. That rule stopped a 1X2-only *sweep*; this one stops a goals-only *evaluation*. Both are the same error — reporting a league as worked when only part of it was — so both carry the same test: **name the market you did not price, or you have not finished the league.**

|EV%     |Assessment (for ranking picks, NOT for stake size)|
|--------|--------------------------------------------------|
|Below 0%|Poor — only pick if nothing better on the card    |
|0–4%    |Marginal                                          |
|4–10%   |Good value                                        |
|10%+    |Strong value                                      |

**EV ranks which pick to take — it does NOT set the stake.** Stake is a flat % of bankroll regardless of EV (see Step 8). Do not increase the stake for high EV: over the first 39 bets, higher claimed EV *underperformed*, so scaling stake with EV lost money. Higher EV means "prefer this pick," not "bet more on it."

Calculate EV for every market on every researched candidate — see the subsection above. Select the highest-EV pick. No skip threshold once matches have cleared Filter 2.

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

User reports actual odds from an approved sportsbook. Recalculate EV from scratch using the actual figure — **converted to effective odds per Step 5**, since the flooring depends on the actual price and the stake, and a price that looked fine at the target can floor badly at the real one. State the effective odds explicitly alongside the quoted odds so the user sees what they are really getting. Then:
- EV positive → confirm the bet
- EV negative → note it, but this is still the day's best available pick
- Always document odds movement direction and what it signals, and adjust the stake tier if EV moved to a different band

-----

## Step 8: Assign Stake

### Current rule: flat 4% of bankroll — NOT EV-scaled

**Stake a flat 4% of current bankroll on every pick, regardless of EV.** A single fixed rate — no per-bet judgment. Take the previous row's `Bankroll` from `bets.org`, multiply by 0.04, round to the nearest 0.5 kr.

**Compute this before Step 5**, because the effective-odds EV calculation needs the stake. The stake still never depends on the EV — only the order of arithmetic changed.

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
- **EV** — the reaffirmed EV% at actual odds, computed from **effective** odds per Step 5 (rows 1-51 were restated on this basis on 2026-08-01; do not mix the two definitions)
- **Odds** — actual odds taken
- **Indsats** — stake (flat % of bankroll per Step 8)
- **Resultat** — final score, entered after the match (e.g. `1-2`)
- **W** — win flag, entered after the match: `1` = won or void/push, `0` = lost (or still pending). This is the only result input needed; Vundet is derived from it.

Auto-computed by the table's `#+TBLFM` formula — **do not enter these**: `#` (row number), **`Vundet`** (= `floor(2 × Odds × Indsats) / 2 × W` — the win return rounded **down** to the nearest 0.5 kr as the provider does, or 0 when `W=0`), `Saldo` (running P&L), `Bankroll` (running balance). The flooring means e.g. 7 × 1.95 = 13.65 → **13.5**, 13 × 1.87 = 24.31 → **24.0**, 10 × 2.05 = 20.5 → **20.5**.

When delivering a pick, present these values ready to paste so the user can log in one step. **A skip day is never logged** — no row, not even a zero-stake one (see the Skip Day Rule in Step 2). Only bets that were actually placed go in the table.

-----

## Notes

- One pick per day maximum (until the gated multi-bet revisit in Step 8 triggers at ~60 bets)
- A skip day is legitimate in exactly two cases (see Skip Day Rule, Step 2): no match survives Filter 2, or every Filter 2 survivor then fails Step 3 (unfillable evidence block, or the written arguments don't support the bet). Both require the League Ladder to be exhausted first.
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

**2026-08-01: EV is now calculated from effective odds, and the whole history was restated.** Caught by the user after the skill quoted a wrong payout for bet #51 (it applied the `× 2` of the flooring formula without the `/ 2`, doubling the return). The underlying error was structural, not arithmetic: `EV% = p × odds - 1` used the **quoted** price, while the provider actually pays `floor(2 × Odds × Indsats) / 2`. Step 5 now converts to `effective_odds = floor(2 × Odds × Indsats) / 2 / Indsats` first, which is exact and needs no new judgment — it also removes any need for a separate "short odds are worse than they look" caveat, because that now falls out of the arithmetic. Step 8's stake calculation moved ahead of Step 5 (the stake is a deterministic 4%, so no discretion is reintroduced).

Rows 1-51 of `bets.org` were recomputed on the new basis, recovering each bet's assessed probability as `p = (EV/100 + 1) / Odds` — exactly invertible, so no information was lost. Effect: mean claimed EV fell from **+10.78% to +8.53%** (mean drag −2.25 points), and **eight bets flipped from claimed +EV to actually negative** (#21, #25, #29, #32, #39, #43, #46, #50). This matters most for the ~60-bet calibration review that gates EV-scaling and multi-bet: that review compares EV bands against results, and it would have been comparing two different quantities if the history had been left as it was. The restatement is expected to sharpen rather than overturn the existing finding — flooring hurts high-probability short-odds bets most, which is exactly where the "good value" Overs cluster.

**2026-08-01: skip days are never logged.** Instructed by the user after the 31 July card produced a skip and the skill's old wording called for a placeholder row. `bets.org` now holds only bets that were actually placed. The zero-stake row was actively harmful, not merely redundant: it consumed a bet number and forced a dummy `Odds` value into the table, which feeds `Gennemsnitsodds` and `Gevinst-%` in the `#+NAME: stats` block. The skip-reason taxonomy that lived in that row's `Type` (`SKIP - ingen kant efter research` vs `SKIP - team news ej tilgaengelig`) is **retired with it** — the user chose to drop the tracking rather than relocate it, so skips now leave no record anywhere and are reported in chat only. Note the consequence, accepted deliberately: the skill can no longer detect an accumulating research-access problem from its own logs. On 31 July, six of ten eliminations were unverifiable team news — that pattern would now be invisible after the conversation ends. **Skip days themselves remain legitimate under the unchanged two-case Skip Day Rule**; only the logging of them is removed.

**2026-08-03: EV must be computed for every market scanned (Step 5).** Instructed by the user after the 3 August card was declared a skip with Poland eliminated on a single number. Cracovia–Pogoń had a complete Filter 2 scan — 1X2, full O/U ladder, AH, BTTS, HT — but only Over 2.5, the market nearest the 2.00 target, was run through the EV formula; at −10.2% the league was crossed off and that figure was reported as Poland's best line. Cracovia to win at 2.32 was **−0.7%, the best number on the whole card**, and only came to light when the user pointed out that finding it on request proved it had been left out. The same re-audit surfaced SønderjyskE to win at 3.25 (−1.0%), never priced because only Odense's win probability had been calculated out of the three outcomes. Neither was positive, so the skip survived — but two claims made to the user were wrong. The rule now says the ~2.00 target selects which bets are *preferred*, not which get evaluated, that a league may not be eliminated on one market's EV, and that the whole card is ranked by EV before a pick or a skip. Explicitly framed as the League Ladder failure one layer down: that rule banned a 1X2-only *sweep*, this one bans a goals-only *evaluation*. Same run also produced two arithmetic errors in the reported EV table (Sarmiento HT U0.5 given as −7.5% when it was −14.9%; Lanús HT U0.5 as −5.7% when it was −11.8%) — the second of which the user acted on, asking for a price on the line the bad number had made look least-bad.

**2026-08-03: Bulgarian Parva Liga and Finnish Veikkausliiga approved** by the user, both mid-run on the same card as Romania, and both with an in-window fixture that was scanned in full on approval (Spartak Varna–Lok. Plovdiv, SJK–HJK). Two calibration facts were written into Scope rather than left to be rediscovered. **Bulgaria is the lowest-scoring league in scope at 2.3 goals per match** — against Iceland's 3.94, Denmark's 3.1, Sweden's 3.05 and Romania's 2.55 — so an Under there is the market's default, not an edge, and its 83–88% payouts mean the margin alone eats more than the flooring does. **Finland is the opposite case: a calendar-year season, so in July–August it is mid-season with a full table and deep H2H — a rung 1 data environment**, and must not be grouped with the form-light summer additions on rung 3.

The Finnish fixture also produced the sharpest illustration yet of the effective-odds rule. HJK away at **1.98** modelled at 51.7% against a break-even of 51.7% — dead flat — because at a 7.5 kr stake 2 × 1.98 × 7.5 = 29.7 floors to 29, paying 14.5 kr for an effective 1.9333. At **2.00** the same bet pays 15.0 kr, an effective 2.00 and +3.4%. Two points of quoted odds were worth a full 0.5 kr because payout moves in 0.5 kr steps: at this stake it steps every 1/15 ≈ 0.067 of odds. **When a price sits just below one of those thresholds, shopping two pips is worth more than a percentage point of assessed probability** — and it was still not a bet, because HJK had a Conference League tie three days later and that rotation risk is what the market was pricing.

**2026-08-05: English EFL Cup (Carabao Cup) approved** by the user, added to Scope + the Step 1 scan list, after Bristol City–Walsall (Round 1) surfaced on that day's scan. Straight knockout, single match through to the semis (which go two-legged), no replays, and the competition scrapped extra time for 2026/27 — drawn ties go straight to penalties after 90 minutes. Two new caveats: cross-divisional quality gaps are the routine case rather than something to filter out (Championship/Premier League vs League One/Two pairings are normal from Round 2 on), which usually means nothing lands near 2.00 in the 1X2 market and the workable line sits in Asian handicap or a scoreline/clean-sheet market instead; and rotation risk cuts against the bigger club specifically because the competition is a low priority for top-flight sides, so lineup confirmation matters as much as it does under the post-tournament-break caveat. First run on Bristol City–Walsall found Walsall winless in 10 of 11 and scoreless in 6 of those, against a Bristol City side that kept 2 clean sheets in its last 3 home games — landed on **Bristol City Win to Nil @ 2.30** (effective 2.286 after flooring) for +5.1% EV, despite a confirmed rotation risk (new manager Skubala's first competitive game, résumé nine days before the Championship opener) because the previewed XI still read as first-team-strength.

**2026-08-05: Argentina Primera Nacional approved** by the user, added to Scope + the Step 1 scan list, after a Gimnasia y Esgrima (Jujuy)–Quilmes fixture turned up on that day's scan under ESPN's legacy "Argentine Nacional B" label. 36 teams in two 18-team zones, double round-robin in-zone but single-meeting interzonal fixtures — the same thin-H2H trap as the Romanian single round-robin, just scoped to half the calendar instead of all of it. The zone-winners final plus a 2nd–8th Torneo Reducido knockout for the second promotion spot is a new dead-rubber shape to watch for once mid-table teams are mathematically out of both promotion and relegation contention. Liquidity on approved books is unverified for this division and flagged explicitly rather than assumed.

**2026-08-03: Romanian SuperLiga (Liga I) approved** by the user and added to Scope + the Step 1 scan list. 16 teams, deep H2H between long-established clubs, good liquidity, kick-offs in the European window (Romanian local time is CET+1, so roughly 17:00–20:30 CET). Two structural quirks were written in rather than discovered later: the regular season is a **single** round-robin of 15 rounds, so two clubs meet only once before the split and current-season H2H is thin *by construction* — prior seasons carry the H2H depth, and "no meeting yet this season" is not missing data. And the championship play-off / relegation play-out **halves the points**, so after the split the displayed table no longer describes the season played and the rate model must run on cumulative goal data; the play-out also manufactures dead rubbers once safety is settled, which is a Filter 1 concern. The 2026/27 season opened 18 July 2026, so Romania was added to the opening-round caveat heading as well. Its two 3 August fixtures were scanned in full on approval and neither cleared, so that card's skip stood — but note how the league was nearly missed: an ESPN `rou.1` date query returned "No games on this date" when there were two, the same date-boundary failure that had already hidden both Liga MX fixtures earlier the same night. **ESPN's per-league date scoreboard is not acceptable as the sole check for whether a league has fixtures in the window** — confirm against an odds source that lists by kick-off time.

**2026-08-02: League Ladder added to Step 2.** Instructed by the user after the day's run declared a skip having researched only Eliteserien and Allsvenskan in depth. Two existing rules had failed silently: the opening-round caveat ("a strong prior, **not** a blanket exclusion") was applied as a blanket exclusion to eight matches across Denmark, Poland and Danish 1. division; and Filter 2's mandatory market scan was run as **1X2 only** on those leagues, so their goals markets were never priced. Re-running the scan properly found **Brøndby–Viborg Under 2.5 @ 2.02** — four of the last five H2H under 2.5, three of the last four finishing with exactly one goal, both recent Brøndby-hosted meetings ending 0-1 and 0-2, against a Brøndby attack missing Dennis with Frøkjær doubtful (Tipsbladet, 1 Aug 2026, fetched). Taken at 2.25 for +17.4% EV. The ladder is derived per-day by data environment rather than hardcoded, because league quality rotates with the calendar; and it explicitly ranks *research order, not eligibility*, since the pick that prompted the rule came from rung 3.

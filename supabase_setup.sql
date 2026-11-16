-- Run in the Supabase SQL Editor. Public scores are readable and insertable by anyone.
-- This is a casual leaderboard, not cheat-proof; for a competitive leaderboard use
-- authentication, rate limiting and server-side score verification.
create table if not exists public.jelly_scores (
  id bigint generated always as identity primary key,
  name text not null check (char_length(name) between 1 and 18),
  score integer not null check (score between 1 and 100000),
  created_at timestamptz not null default now()
);
create index if not exists jelly_scores_score_idx on public.jelly_scores(score desc);
alter table public.jelly_scores enable row level security;
create policy "public can read scores" on public.jelly_scores for select to anon using (true);
create policy "public can submit scores" on public.jelly_scores for insert to anon with check (true);
grant select, insert on public.jelly_scores to anon;
grant usage, select on sequence public.jelly_scores_id_seq to anon;

-- Migration 0006: rename model IDs to Cursor built-in slugs
-- Renames the base (no reasoning-budget) Claude model IDs so Cursor's built-in
-- model slugs route through the proxy instead of bypassing it.

UPDATE model_mappings SET id = 'claude-sonnet-4-6', label = 'Claude Sonnet 4.6'
WHERE id = 'sonnet-4.6';

UPDATE model_mappings SET id = 'claude-opus-4-6', label = 'Claude Opus 4.6'
WHERE id = 'opus-4.6';

UPDATE model_mappings SET id = 'claude-opus-4-7', label = 'Claude Opus 4.7'
WHERE id = 'opus-4.7';

UPDATE model_mappings SET id = 'claude-haiku-4-5', label = 'Claude Haiku 4.5'
WHERE id = 'haiku-4.5';

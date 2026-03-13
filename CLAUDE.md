# lex-elastic_app_search: Elastic App Search Integration for LegionIO

**Repository Level 3 Documentation**
- **Parent**: `/Users/miverso2/rubymine/legion/extensions-other/CLAUDE.md`
- **Grandparent**: `/Users/miverso2/rubymine/legion/CLAUDE.md`

## Purpose

Legion Extension that connects to Elastic App Search. Provides runners for managing engines, documents, search, analytics, schemas, synonyms, curations, credentials, and click-through tracking.

**GitHub**: https://github.com/LegionIO/lex-elastic_app_search
**License**: MIT

## Architecture

```
Legion::Extensions::ElasticAppSearch
├── Runners/
│   ├── Analytics      # Search analytics
│   ├── ClickThrough   # Click-through tracking
│   ├── Credentials    # API key management
│   ├── Curations      # Search curations
│   ├── Documents      # Document CRUD
│   ├── Engines        # Engine management
│   ├── Schemas        # Schema management
│   ├── Search         # Search queries
│   └── Synonyms       # Synonym sets
└── Helpers/
    └── Client         # Elastic::AppSearch::Client wrapper
```

## Key Files

| Path | Purpose |
|------|---------|
| `lib/legion/extensions/elastic_app_search.rb` | Entry point, default settings (host: localhost:3002) |
| `lib/legion/extensions/elastic_app_search/helpers/client.rb` | Elastic App Search client (host_identifier + api_key) |
| `lib/legion/extensions/elastic_app_search/runners/` | All runners |

## Dependencies

| Gem | Purpose |
|-----|---------|
| `elastic-app-search` | Official Elastic App Search Ruby client |

## Configuration

Default settings:
- `host`: `http://localhost:3002`
- `api_key`: set per-call or via Legion settings

## Development

```bash
bundle install
bundle exec rspec
bundle exec rubocop
```

---

**Maintained By**: Matthew Iverson (@Esity)

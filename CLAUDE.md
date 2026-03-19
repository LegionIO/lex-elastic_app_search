# lex-elastic_app_search: Elastic App Search Integration for LegionIO

**Repository Level 3 Documentation**
- **Parent**: `/Users/miverso2/rubymine/legion/extensions-other/CLAUDE.md`
- **Grandparent**: `/Users/miverso2/rubymine/legion/CLAUDE.md`

## Purpose

Legion Extension that connects to Elastic App Search. Provides runners for managing engines, documents, search, analytics, schemas, synonyms, curations, credentials, and click-through tracking.

**GitHub**: https://github.com/LegionIO/lex-elastic_app_search
**License**: MIT
**Version**: 0.2.0

## Architecture

```
Legion::Extensions::ElasticAppSearch
├── Client             # Standalone client: includes all runners, usable outside Legion runtime
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
    └── Client         # Elastic::AppSearch::Client wrapper (used by runners in the Legion runtime)
```

## Standalone Usage

`Legion::Extensions::ElasticAppSearch::Client` can be instantiated directly without running the Legion framework:

```ruby
client = Legion::Extensions::ElasticAppSearch::Client.new(
  host: 'http://localhost:3002',
  api_key: 'my-api-key'
)
client.list_engines
```

The constructor accepts `host:` and `api_key:` kwargs (both optional; host defaults to `http://localhost:3002`). Each runner method builds a fresh `Elastic::AppSearch::Client` instance from the stored `@opts`.

## Key Files

| Path | Purpose |
|------|---------|
| `lib/legion/extensions/elastic_app_search.rb` | Entry point, default settings (host: localhost:3002) |
| `lib/legion/extensions/elastic_app_search/client.rb` | Standalone client class including all runners |
| `lib/legion/extensions/elastic_app_search/helpers/client.rb` | Elastic App Search client (host_identifier + api_key) used by the runtime |
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

15 specs total.

```bash
bundle install
bundle exec rspec
bundle exec rubocop
```

---

**Maintained By**: Matthew Iverson (@Esity)

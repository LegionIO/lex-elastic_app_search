# lex-elastic_app_search: Elastic App Search Integration for LegionIO

**Repository Level 3 Documentation**
- **Category**: `/Users/miverso2/rubymine/legion/extensions/CLAUDE.md`

## Purpose

Legion Extension that connects to Elastic App Search. Provides runners for managing engines, documents, search, analytics, schemas, synonyms, curations, credentials, and click-through tracking.

**GitHub**: https://github.com/LegionIO/lex-elastic_app_search
**License**: MIT

## Architecture

```
Legion::Extensions::ElasticAppSearch
└── Runners/
    ├── Analytics      # Search analytics
    ├── ClickThrough   # Click-through tracking
    ├── Credentials    # API key management
    ├── Curations      # Search curations
    ├── Documents      # Document CRUD
    ├── Engines        # Engine management
    ├── Schemas        # Schema management
    ├── Search         # Search queries
    └── Synonyms       # Synonym sets
```

## Dependencies

| Gem | Purpose |
|-----|---------|
| `elastic-app-search` | Elastic App Search Ruby client |

## Testing

```bash
bundle install
bundle exec rspec
bundle exec rubocop
```

---

**Maintained By**: Matthew Iverson (@Esity)

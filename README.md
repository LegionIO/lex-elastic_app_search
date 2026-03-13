# lex-elastic_app_search

Elastic App Search integration for [LegionIO](https://github.com/LegionIO/LegionIO). Manages engines, documents, search, analytics, schemas, synonyms, curations, credentials, and click-through tracking.

## Installation

```bash
gem install lex-elastic_app_search
```

Or add to your Gemfile:

```ruby
gem 'lex-elastic_app_search'
```

## Runners

| Runner | Operations |
|--------|-----------|
| Engines | Engine management |
| Documents | Document CRUD |
| Search | Search queries |
| Analytics | Search analytics |
| Schemas | Schema management |
| Synonyms | Synonym sets |
| Curations | Search curations |
| Credentials | API key management |
| ClickThrough | Click-through tracking |

## Configuration

Default host: `http://localhost:3002`. Override via Legion settings:

```json
{
  "extensions": {
    "elastic_app_search": {
      "host": "https://your-deployment.ent-search.region.aws.cloud.es.io",
      "api_key": "your-api-key"
    }
  }
}
```

## Requirements

- Ruby >= 3.4
- [LegionIO](https://github.com/LegionIO/LegionIO) framework
- Elastic App Search instance

## License

MIT

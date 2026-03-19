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

## Standalone Usage

```ruby
require 'legion/extensions/elastic_app_search'

client = Legion::Extensions::ElasticAppSearch::Client.new(
  host: 'https://your-deployment.ent-search.region.aws.cloud.es.io',
  api_key: 'your-api-key'
)

client.list_engines
client.search(engine_name: 'my-engine', query: 'hello')
```

Constructor accepts `host:` (default `http://localhost:3002`) and `api_key:` kwargs.

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
- Elastic App Search instance
- [LegionIO](https://github.com/LegionIO/LegionIO) framework (optional for standalone client)

## License

MIT

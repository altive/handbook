---
title: Open API
description: Open APIに準拠したREST APIを作成する場合の取り決め。
---

### Nullable
Nullを許容するフィールドは、`required` にしないだけでなく、明示的に `nullable: true` を指定すること。
指定しなくてもOpenAPI Generatorで生成されるコードはNullableになるが、APIドキュメントとして、明示することが好ましい。

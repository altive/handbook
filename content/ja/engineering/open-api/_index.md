+++
title = "Open API"
description = "Open API"
+++

### Nullable
Nullを許容するフィールドは、`required` にしないだけでなく、明示的に `nullable: true` を指定すること。
指定しなくてもOpenAPI Generatorで生成されるコードはNullableになるが、APIドキュメントとして、明示することが好ましい。

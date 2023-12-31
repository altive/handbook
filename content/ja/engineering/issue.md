---
title: Issue（タスク）
description: GitHub Issueやその他Gitサービスにおけるチケットなど、タスクを管理するため機能について。
---
## Issueの見積もりはチームで行う

{{< alert title="目的" >}}
1. チームでの認識合わせ・タスクの共有
1. 考慮不足の回避
1. 見積もりの精度向上
{{< /alert >}}

チームでプランニングポーカーを行い、SP（ストーリーポイント）をつける。

SPには、`1, 2, 3, 5, 8, 13` のように、「フィボナッチ数列」を使用する。  
これは、数字が大きくなるにつれて、見積もりの精度が低くなることを表している。

`SP: 8` 以上がついたIssueは精度が低いことが多いため、原則Issueを分割する。

## Issueの分割とプルリクエストからのIssue起票

Iterationで設定したIssueだが、実際に着手すると、分割した方が良いことがわかることがある。
適宜分割する。

また、プルリクエストでコメントをもらったものの、そのPRではなく別のタスクとして行う場合は、Issueを起票する。

切り出したIssueは、説明が省略される傾向にあり属人化したり意図がわかりにくくなったりしやすいため、以下の対応を行う必要がある。

1. 切り出し元となるIssueやコメントがあれば引用してリンクを貼ること
1. 引用だけでなく、そのIssueを見れば内容がわかるように簡潔にまとめた説明を書いておくこと

また、切り出したIssueは、デフォルトでGitHub Projectの `No Iteration` に入るため、見逃しやすい。

1. 今Iterationでやれるものは、今Iterationに追加する
1. すぐに着手できないものは、次Iterationに入れて、次回のプランニングで目に入るようにする

## リファクタリングIssueをいつやるか

原則、リファクタリングIssueはすぐに着手するか、起票すべきである。

しかし、起票から着手までの期間が空くほど、着手の際に内容を思い出すための時間がかかってしまう。

重く、見積もりや計画が必要なタスクでなければ、後回しにせず、今Iterationか次Iterationで着手すること。

そのためにも、機能開発の見積もりは、リファクタリング等のバッファを含めて考えておかなければならない。
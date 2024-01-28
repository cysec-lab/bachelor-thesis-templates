# 論文テンプレート

## ブランチ構成

- 2023年度秋セメスター卒論：[`template/bachelor-fy2023-autumn`](https://github.com/cysec-lab/thesis-templates/tree/template/bachelor-fy2023-autumn)

## レビュー用 Pull Request 作成方法

1. 準備
    - [GitHub CLIをインストール](https://cli.github.com/)
    - デフォルトブランチが `main` でない場合は変更
2. 以下をコピーしてターミナルにペースト
    ```sh
    git branch review $(git rev-list --max-parents=0 HEAD | tail -n 1) \
    && git push origin review \
    && gh pr create --base review --head main --title "レビュー用" --body "レビュー用PRです。マージはしないでください。"
    ```


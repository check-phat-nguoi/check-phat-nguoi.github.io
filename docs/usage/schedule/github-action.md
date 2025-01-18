# Github Action

- Fork repo <https://github.com/check-phat-nguoi/cpn-gha>
- Bỏ comment 2 dòng sau và commit

```yaml title=".github/workflows/schedule-run.yml" hl_lines="4 5"
name: Schedule Run

on:
  # schedule:
  #   - cron: 0 0 * * 0
  workflow_dispatch:
```

??? note "Tùy chỉnh thời gian schedule"

      - <https://crontab.guru>
      - <https://savvytime.com/converter/utc-to-vietnam-ho-chi-minh-city>

- Kích hoạt Github Action của repo

!!! note

    Có thể kích hoạt thủ công workflow `schedule-run`

# Thiết lập chạy tự động

## Github Action

- Fork repo này
- Bỏ comment 2 dòng sau và commit

```yaml title=".github/workflows/schedule-run.yml" hl_lines="4 5"
--8<-- ".github/workflows/schedule-run.yml:1:7"
```

??? note "Tùy chỉnh thời gian schedule"

      - <https://crontab.guru>
      - <https://savvytime.com/converter/utc-to-vietnam-ho-chi-minh-city>

- Kích hoạt Github Action của repo

!!! note

    Có thể kích hoạt thủ công workflow `schedule-run`

---

## Windows

- Task Scheduler

---

## Linux

<https://www.digitalocean.com/community/tutorials/how-to-use-cron-to-automate-tasks-ubuntu-1804>

# Github Action

## Thiết lập

2.  Fork repo <https://github.com/check-phat-nguoi/cpn-gha>
3.  Kích hoạt Github Action của repo

---

## Chuẩn bị cpn-cli config

???+ info

    Vì `schedule-run` github action dùng cpn-cli để chạy

1. Vào <https://gist.github.com/>
2. Paste config và tạo secret gist
3. Ấn nút "raw" để lấy direct link tới config
4. Vào repo bạn đã fork, `settings` -> `Secrets and variables` -> `Actions`
5. Tại mục repository secrets, tạo secret mới
6. Đặt tên secret là `config` và paste direct link tới config vào

??? note

    Bạn có thể dùng bất kì phương thức gì để có direct link tới config, không nhất thiết dùng gist.

---

## Lên lịch trình

4.  Bỏ comment 2 dòng sau và commit

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

---

## Gọi chạy thủ công

Có thể gọi chạy thủ công

1. Vào tab action
2. Chọn workflow `Schedule Run`
3. `Run workflow`

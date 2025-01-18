# Cài đặt

## Yêu cầu

- [Tesseract OCR CLI](https://tesseract-ocr.github.io/tessdoc/Installation.html) và [Tesseract data set](https://github.com/tesseract-ocr/tessdata) _(Không bắt buộc)_(1)
  { .annotate }

      1. Sử dụng để giải captcha đối với API `csgt.vn`

---

## Cài đặt

=== "pip"

    ??? note "Python version >= 3.13"

        === "module venv sẵn có"

            Có thể thiết lập môi trường ảo bằng module venv có sẵn.

            ```sh
            python -m venv .venv
            ```

            Kích hoạt môi trường ảo


            === "Windows"

                ```powershell
                .venv\Scripts\activate
                ```

            === "Unix / MacOS"

                ```sh
                source .venv/bin/activate
                ```

            ???- info "Tắt môi trường ảo"

                Để tắt môi trường khi không sử dụng chạy `deactivate`


    ```sh
    pip install cpn-cli
    ```

## Chạy

```sh
cpn-cli
```

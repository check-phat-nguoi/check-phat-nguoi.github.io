# Cài đặt

## Yêu cầu

- [Tesseract OCR CLI](https://tesseract-ocr.github.io/tessdoc/Installation.html) và [Tesseract data set](https://github.com/tesseract-ocr/tessdata) _(Không bắt buộc)_(1)
  { .annotate }

      1. Sử dụng để giải captcha đối với API `csgt.vn`

---

## Cài đặt và chạy

=== "pip"

    !!! note

        Python version >= 3.13

    ??? note "Tạo môi trường ảo"

        Có thể thiết lập môi trường ảo bằng module venv có sẵn tránh cài đặt vào hệ thống global.

        === "module venv sẵn có"

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


    Tải

    ```sh
    pip install cpn-cli
    ```

    Chạy

    ```sh
    cpn-cli
    ```

=== "pipx"

    === "Cài vào hệ thống"

        ```sh
        pipx install cpn-cli
        cpn-cli
        ```

    === "Chạy trực tiếp"

        !!! note

            Tải vào cache và chạy trực tiếp

        ```sh
        pipx run cpn-cli
        ```

=== "uv"

    !!! note

        uv tải vào cache và chạy trực tiếp

    ```sh
    uvx cpn-cli
    ```

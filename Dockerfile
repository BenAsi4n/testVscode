FROM python:3.7

# Cài đặt các gói cần thiết
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Thiết lập thư mục làm việc
WORKDIR /usr/src/app

# Sao chép requirements.txt vào container
COPY requirements.txt ./

# Cài đặt các thư viện Python từ requirements.txt
RUN pip install -r requirements.txt

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Mở cổng 5000
EXPOSE 5000

# Lệnh khởi chạy ứng dụng
CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]

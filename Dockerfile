FROM node:20 

WORKDIR /usr/local/bin

COPY .. .

RUN apt-get update && apt-get install -y \
    libgtk2.0-0 \
    libgdk-pixbuf2.0-0 \
    libatk1.0-0 \
    libcairo2 \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    libfreetype6 \
    libfontconfig1 \
    libnotify4 \
    libgconf-2-4 \
    libnss3 \
    libasound2 \
    libcups2 \
    libdbus-1-3 \
    libx11-6 \
    libxrandr2 \
    libxext6 \
    libxfixes3 \
    libxrender1 \
    libxcomposite1 \
    libxdamage1 \
    libxtst6 \
    libxi6 \
    libxcursor1 \
    libxinerama1 \
    && rm -rf /var/lib/apt/lists/*

RUN sh bin/linux/setup.sh

ENTRYPOINT ["sh", "bin/linux/run.sh"]

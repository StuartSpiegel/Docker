# Use the official Kali Linux rolling release as the base
FROM kalilinux/kali-rolling

# Label the image
LABEL maintainer="Your Name <your.email@example.com>"

# Update package list and install Aircrack-ng
RUN apt-get update && \
    apt-get install -y aircrack-ng && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set the working directory
WORKDIR /workspace

# Command to keep the container running (Aircrack-ng needs to be run interactively)
CMD ["tail", "-f", "/dev/null"]

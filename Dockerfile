# Use OpenJDK image
FROM openjdk:17-slim

# Set work directory
WORKDIR /app

# Copy source code
COPY Main.java .

# Compile Java code
RUN javac Main.java

# Expose port
EXPOSE 8080

# Run app
CMD ["java", "Main"]


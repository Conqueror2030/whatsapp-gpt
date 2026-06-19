# Pull the exact official, pre-compiled Evolution API image
FROM evoapicloud/evolution-api:latest

USER root
RUN mkdir -p /app/data && chmod -R 777 /app/data

# Configure the system to run on Hugging Face's port requirements
ENV PORT=7860
ENV SERVER_PORT=7860
EXPOSE 7860

# --- THE CORRECT NO-DATABASE STACK ---
ENV DATABASE_PROVIDER=postgresql
ENV DATABASE_CONNECTION_URI="postgresql://localhost:5432/evolution?schema=public"
ENV DATABASE_SAVE_DATA_INSTANCE=false

# Keep local file system cache active for temporary session storage
ENV CACHE_LOCAL_ENABLED=true
ENV CACHE_REDIS_ENABLED=false

# Set your security admin key
ENV AUTH_API_KEY=YourSuperSecretAdminKey123!

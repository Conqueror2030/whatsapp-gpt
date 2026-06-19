# Pull the exact official, pre-compiled Evolution API image
FROM evoapicloud/evolution-api:latest

# Configure the system to run on Hugging Face's port requirements
ENV PORT=7860
EXPOSE 7860

# --- THE CORRECT NO-DATABASE STACK ---
# Completely turn off external database validation
ENV DATABASE_ENABLED=false

# Keep local file system cache active for temporary session storage
ENV CACHE_LOCAL_ENABLED=true
ENV CACHE_REDIS_ENABLED=false

# Set your security admin key
ENV AUTH_API_KEY=YourSuperSecretAdminKey123!

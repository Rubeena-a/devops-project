#!/bin/bash
# Deployment script for the  devops application

set -e # Exit immediately if a command exits with a non-zero status
set -u # Treat unset variables as an error
set -o pipefail # Prevent errors in a pipeline from being masked
set -x # Print commands and their arguments as they are executed

# Load environment variables
source "$(dirname "$0")/../config/env.sh"
# Navigate to the application directory
cd "$APP_DIR"
# Pull the latest changes from the repository
git pull origin main
# Install dependencies
npm install
# Build the application
npm run build
# Restart the application using PM2
pm2 restart devops-app || pm2 start npm --name "devops-app" -- start
# Log deployment completion
echo "Deployment completed successfully at $(date)" >> "$LOG_DIR/deploy.log"

# Send notification (optional)
if [ -n "${NOTIFICATION_EMAIL:-}" ]; then
    echo "Deployment completed successfully for devops application." | mail -s "Deployment Notification" "$NOTIFICATION_EMAIL"
fi  

# Simulate deployment steps
echo "Simulating deployment steps..."
sleep 2
echo "Deployment simulation completed." >> "$LOG_DIR/deploy.log"



# End of script
echo "Deployment script finished."         

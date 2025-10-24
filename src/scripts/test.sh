#!/bin/bash
# Testing script for the devops application
set -e # Exit immediately if a command exits with a non-zero status
set -u # Treat unset variables as an error
set -o pipefail # Prevent errors in a pipeline from being masked
set -x # Print commands and their arguments as they are executed
# Load environment variables
source "$(dirname "$0")/../config/env.sh"
# Navigate to the application directory
cd "$APP_DIR"
# Run tests
npm test

# Log testing completion
echo "Testing completed successfully at $(date)" >> "$LOG_DIR/test.log" 

# End of script
echo "Testing script finished."

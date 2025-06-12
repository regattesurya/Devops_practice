echo "Hello, Jenkins!"
ls -al  # Verify demo-script.sh is in the workspace
pwd     # Print working directory (should be Jenkins workspace)

# Run the script (if it exists)
if [ -f "./demo-script.sh" ]; then
    chmod +x demo-script.sh  # Ensure executable
    ./demo-script.sh
else
    echo "ERROR: demo-script.sh not found!"
    exit 1  # Fail the build
fi

# Part 3: Pre-Build Script
echo "Part 3: Pre-Build"
echo "------------------"


# Clean and build the project
gradle clean build

if [ $? -eq 0 ]; then
        echo "Pre-Build completed succesfully."
else
        echo "Error: Pre-Build script failed."
        exit 1
fi

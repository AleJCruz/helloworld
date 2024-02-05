# Part 3: Pre-Build Script
echo "Part 3: Pre-Build"
echo "------------------"

# Configura el PATH para usar Gradle 7.2
export PATH=/opt/gradle/gradle-7.2/bin:$PATH

# Navega al directorio del proyecto
cd /home/business.account/project/helloworld/

# Clean and build the project
gradle clean build

if [ $? -eq 0 ]; then
        echo "Pre-Build completed succesfully."
else
        echo "Error: Pre-Build script failed."
        exit 1
fi

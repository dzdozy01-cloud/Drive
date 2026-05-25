# Get the code
git https://github.com/dzdozy01-cloud/nuvio-dzdozy.git
cd NuvioStreamsAddon

# Install what's needed
npm install

# Copy the example settings file
cp .env.example .env

# IMPORTANT: Edit the .env file to add your TMDB API key and provider settings
# Open .env in any text editor and set TMDB_API_KEY=your_key_here (see Example .env below)

# Start the addon only AFTER setting up your .env file
npm start
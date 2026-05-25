# Clone your Hugging Face Space repository locally
git clone https://dzdozy.co/spaces/YOUR_HF_USERNAME/nuvio-dzdozy

# Copy your addon files (including the new Dockerfile) into that folder
cp -r /path/to/nuvio-dzdozy/* ./nuvio-dzdozy

# Commit and push to Hugging Face
cd nuvio-dzdozy
git add .
git commit -m "Deploy Nuvio clone to Hugging Face"
git push

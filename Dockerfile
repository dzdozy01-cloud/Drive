# 1. Clone your Hugging Face Space repository
git clone https://huggingface.co/spaces/dzdozy/dzdozy

# 2. Clone the owner's repository to get the base files
git clone https://github.com/enrico9034/omnivix-hf.git omnivix-temp

# 3. Copy the owner's files into your Hugging Face folder
cp -r omnivix-temp/* dzdozy/

# 4. Navigate into your Hugging Face space directory
cd dzdozy

# 5. Ensure the Dockerfile uses the correct Hugging Face setup
cat << 'EOF' > Dockerfile
# HF Spaces sandbox doesn't allow NET_ADMIN / /dev/net/tun, so we use the
# :warp image variant which bundles wgcf + wireproxy (userspace WireGuard).
FROM ghcr.io/enrico9034/omnivix:warp-extended-2.0
ENV PORT=7860
EXPOSE 7860
EOF

# 6. Delete the temporary folder we cloned
rm -rf ../omnivix-temp

# 7. Push everything to Hugging Face to start the build
git add .
git commit -m "init"
git push

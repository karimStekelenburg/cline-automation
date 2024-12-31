#!/bin/bash

# Create and enter krm-ctx directory
mkdir -p krm-ctx
cd krm-ctx

# Clone the repository
git clone https://github.com/karimstekelenburg/krm-ctx.git .

# Remove the .git directory
rm -rf .git

# Rename krm-ctx.md to .clinerules
mv krm-ctx.md ../.clinerules

# Remove .template. from filenames
for file in $(find . -name "*.template.md"); do
    mv "$file" "${file/.template/}"
done

echo "Installation complete!"

#!/bin/bash

# Verification script before pushing to GitHub

echo "=========================================="
echo "GitHub Push Verification"
echo "=========================================="
echo ""

# Check if .env is ignored
echo "✓ Checking .env is ignored..."
if git check-ignore .env > /dev/null 2>&1; then
    echo "  ✅ .env is properly ignored"
else
    echo "  ❌ WARNING: .env is NOT ignored!"
    exit 1
fi

# Check if env-config.js is ignored
echo "✓ Checking frontend/env-config.js is ignored..."
if git check-ignore frontend/env-config.js > /dev/null 2>&1; then
    echo "  ✅ frontend/env-config.js is properly ignored"
else
    echo "  ⚠️  frontend/env-config.js might not exist yet (OK)"
fi

# Check for sensitive data
echo "✓ Checking for sensitive data..."
if git grep -i "password.*=" -- '*.java' '*.js' '*.properties' | grep -v "DB_PASSWORD" | grep -v ".example" > /dev/null 2>&1; then
    echo "  ❌ WARNING: Found potential passwords in code!"
    git grep -i "password.*=" -- '*.java' '*.js' '*.properties' | grep -v "DB_PASSWORD" | grep -v ".example"
    exit 1
else
    echo "  ✅ No hardcoded passwords found"
fi

# Check if .env.example exists
echo "✓ Checking .env.example exists..."
if [ -f .env.example ]; then
    echo "  ✅ .env.example exists"
else
    echo "  ❌ ERROR: .env.example not found!"
    exit 1
fi

# Check if target directory is ignored
echo "✓ Checking target/ is ignored..."
if git check-ignore bill_management/target > /dev/null 2>&1; then
    echo "  ✅ target/ is properly ignored"
else
    echo "  ⚠️  target/ might not exist yet (OK)"
fi

# Check documentation files
echo "✓ Checking documentation..."
required_docs=("README.md" "LICENSE" "CHANGELOG.md" ".gitignore")
for doc in "${required_docs[@]}"; do
    if [ -f "$doc" ]; then
        echo "  ✅ $doc exists"
    else
        echo "  ❌ ERROR: $doc not found!"
        exit 1
    fi
done

echo ""
echo "=========================================="
echo "✅ All checks passed!"
echo "=========================================="
echo ""
echo "Ready to push to GitHub:"
echo "  git add ."
echo "  git commit -m 'Initial commit'"
echo "  git push origin main"
echo ""

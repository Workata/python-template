# run checks and potentialy fix them

echo "Check typing with mypy..."
echo "mypy ."
mypy .

echo "Format with ruff..."
echo "ruff format"
ruff format

echo "Lint with ruff..."
echo "ruff check --fix"
ruff check --fix

echo "Test with PyTest... (+ check coverage)"
coverage run -m pytest .

echo "Report coverage..."
coverage report -m

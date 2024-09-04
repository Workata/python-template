# python-template
Simple template for python project

## Checklist

- [ ] Find and replace all occurrences of 'app_name' to your project slug and 'app-name' to your project name.
- [ ] Change project folder name from 'app_name' to your project slug.
- [ ] Open `pyproject.toml` and update information about the project like authors, description etc.


## Dev setup

### Basic setup
Copy env file
```sh
cp -n .env.example .env
```

Create new venv
```sh
python3 -m venv ./venv
```

Activate venv
```sh
. ./venv/bin/activate
```

Install needed requirements
```sh
pip install -r requirements/dev.txt
```

### Static checks and unit tests
Run unit tests
```sh
pytest .
```

Run unit tests and check coverage
```sh
coverage run -m pytest .
coverage report -m
```

Run linter
```sh
ruff check --fix
```

Run formatter
```sh
ruf format
```

### Packaging
If you need to package your project you can use [hatch](https://hatch.pypa.io/1.9/).


Install hatchling
```sh
pip install hatchling==1.25.0
```

Build a package
```sh
hatch build
```

Publish (you need to define [repository](https://hatch.pypa.io/1.9/publish/#repository) and [credentials](https://hatch.pypa.io/1.9/publish/#authentication))
```sh
hatch publish
```

### Containerization

Build image
```sh
docker build . --tag app-image
```

Create container and run it
```sh
docker run app-image
```

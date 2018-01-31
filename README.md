# to build the image
```
docker build -t rafaelhm/grape_base .
```

# to run the image in a static way
```
docker run --rm -p 5000:5000 -t rafaelhm/grape_base
```

# to run the image with dynamic content
```
docker run --rm -itP -v $(pwd):/app -p 5000:5000 rafaelhm/grape_base
```

# Using composer:
```
docker-compose up
```
```
docker-compose down
```

You are good to go =)
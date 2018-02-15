# Old way (using only docker)
### to build the image
```
docker build -t rafaelhm/grape_base .
```

### to run the image in a static way
```
docker run --rm -p 5000:5000 -t rafaelhm/grape_base
```

### to run the image with dynamic content
```
docker run --rm -itP -v $(pwd):/app -p 5000:5000 rafaelhm/grape_base
```

# Using docker-composer (new way):
```
docker-compose up
docker-compose down
```
Go to [http://localhost:5000/tasks](http://localhost:5000/tasks)

## Running the specs:
```
docker-compose run web bundle exec rspec
```

# TODO's
* When added new gems, you still need to run ```docker-compose build```
* 
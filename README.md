# docker-gatsbyjs

Dockerfile for use with @gatsbyjs

# Build container
```
docker build -t cannin/gatsbyjs .
```

# Create site
1. Create the folder which gonna host your site

    ```
    docker run -it --rm -v $(pwd):/site -w /site cannin/gatsbyjs new <yoursite>
    ```

    Also, If you want to use one of the [Gatsby Starters](https://github.com/gatsbyjs/gatsby#gatsby-starters) add it at the end

    ```
    docker run -it --rm -v $(pwd):/site -w /site cannin/gatsbyjs new gatsby3 https://github.com/gatsbyjs/gatsby-starter-default
    ```

2. Start the develop process inside yoursite folder

    ```
    cd <yoursite>
    docker run -it --name gatsby -v $(pwd):/site -w /site -p 8000:8000 cannin/gatsbyjs develop
    docker rm -f gatsby; docker run --name gatsby -it --rm -v $(pwd):/site -w /site -p 8000:8000 cannin/gatsbyjs bash
    docker exec -it gatsby bash

    gatsby develop -H 0.0.0.0
    ```

3. Build your site

    ```
    docker run -it --rm -v $(pwd):/site -w="/site" cannin/gatsbyjs build
    ```

Notice: `node_modules` will be rebuilt if the folder doesn't exist or if you run `build`

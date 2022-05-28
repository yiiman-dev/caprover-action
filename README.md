# caprover-action
Action to deploy on Caprover server.


# Inputs

## `mode`:

If mode is `git`, caprover-action will deploy image from docker and then build your image on caprover

If mode is `docker`, caprover-action will deploy image from your docker repository (Run ready to use docker image)

Now If your `mode` is  `git` these options are required:

### 1: `server`

**Required** CapRover server's admin panel URL. Ex. https://captain.root.domain.com.

### 2: `password`

**Required** CapRover admin password. Use ${{ secrets.CAPROVER_PASSWORD }} for better security.

### 3: `appname`

**Required** Application name on the CapRover server. Must exists.

### 4: `branch`

Because mode is set to `git` ,then caprover-action will be use this option as branch which will be deployed. *Default: master*

### 
## Git example usage
```
uses: yiiman-dev/caprover-action@v1
with:
  server: 'https://captain.root.domain.com'
  password: '${{ secrets.CAPROVER_PASSWORD }}'
  appname: 'my-app'
  mode: 'git'
```

---------
---------
---------
---------
---------
---------
---------
If your `mode` is  `docker` these options are required:

### 1: `server`

**Required** CapRover server's admin panel URL. Ex. https://captain.root.domain.com.

### 2: `password`

**Required** CapRover admin password. Use ${{ secrets.CAPROVER_PASSWORD }} for better security.

### 3: `appname`

**Required** Application name on the CapRover server. Must exists.

### 4: `image`

Because model is set to `docker`, then caprover-action will be use this option as docker image for fastest deploy on caprover server

It should either exist on server, or it has to be public, or on a private repository that CapRover has access to


### 
## Docker image example usage
```
uses: yiiman-dev/caprover-action@v1
with:
  server: 'https://captain.root.domain.com'
  password: '${{ secrets.CAPROVER_PASSWORD }}'
  appname: 'my-app'
  mode: 'docker'
  image: 'dockerimage:latest'
```
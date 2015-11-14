ionic-RESTful-app
=====================


## ionic FE --> ruby api BE

![enter image description here](https://s3-us-west-2.amazonaws.com/dubhouse/githubImages/ionicruby.png)


### Ruby

```bash
$ git clone [this repo]
```

```bash
$ cd rubyapi
```

```bash
$ cd bundle
```

```bash
$ cd rake db:create
```

```bash
$ cd rake db:migrate
```

```bash
$ rails s [--binding=IP-OF-SERVER]  -p3001
```

### Ionic

```bash
$ cd ionic
```


```bash
$ npm install -g ionic
```

```bash
$ npm install 
```

```bash
$ ionic platform add [os]
```

```bash
$ ionic build [os]
```

```bash
ionic emulate ios
```

>  For android the normal emulator sdk sucks balls, its slow at best. 
>  you will need it installed, but it should use https://www.genymotion.com/#!/
>  Its screaming fast, and has full camera access.
>  Because it uses virtual box ionic and droid sdk see it as a real mobile device so use

```bash
ionic run android
```



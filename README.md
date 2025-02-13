# PHP Welcome Page

> :bangbang: This is to be used for the [OpenShift CICD Demo](https://github.com/RedHatWorkshops/openshift-cicd-demo) and shouldn't be modified directly.

This is an example PHP application you can use to test your OpenShift environment.

Here is an example:
```
user@host$ oc new-app openshift/php~https://github.com/RedHatWorkshops/welcome-app
```

Things to keep in mind:
* `ose new-app` Creates a new application on OpenShift
* `openshift/php` This tells OpenShift to use the PHP image stream builder
* Provide the git URL for the project
  * Syntax is "imagestream~souce"

Once you created the app, start your build

```
user@host$ oc start-build welcome-app
```

Once the build completes; create and add your route:
```
user@host$ oc expose svc welcome-app
```

Scale up as you wish
```
user@host$ oc scale --replicas=3 dc/welcome-app
```

If you'd like to add another route (aka "alias"); then you need to specify a new name for it

```
===
user@host$ oc expose svc welcome-app --name=hello-openshift --hostname=hello-openshift.cloudapps.example.com
```
===

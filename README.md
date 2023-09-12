# simpleapp-project-template
project template use to create simpleapp project

***Refer [https://github.com/SIMITGROUP/simpleapp-generator](https://github.com/SIMITGROUP/simpleapp-generator) to know what is simpleapp-generator***
# How to start:
1. install simpleapp-generator
```bash
npm install -g @simitgroup/simpleapp-generator@latest
```
2. edit config.json for your environment
```json
{
    "definationsFolder":"./definations",
    "backendFolder":"./backend", 
    "backendPort":"8000",
    "mongoConnectStr":"mongodb://localhost:27017/admin?authMechanism=DEFAULT",
    "frontendFolder":"./frontend",
    "frontendPort":"8080",
    "openapi3Yaml":"./openapi.yaml",
    "keycloaksetting":{
        "OAUTH2_BASEURL":"https://keycloak-server-url",
        "OAUTH2_REALM":"realm-name",
        "OAUTH2_CONFIGURL":"https://keycloak-server-url",
        "OAUTH2_CLIENTID":"client-id",
        "OAUTH2_CLIENTSECRET":"client-secret-value",
        "AUTH_SECRET_KEY":"my-secret-key"    
    }
}
```
3. Run generator for first time to generate frontend (nuxt), backend (nest) project
```sh
sh start-fresh.sh
```
It will take quite sometimes until you can access 
backend: http://localhost:8000/api (with multiple microservices ready)
frontend: http://localhost:8080 (it redirect you to keycloak login page)

4. `Ctrl-c` to stop the cli, future start frontend and backend separately
```sh
cd backend
pnpm start:dev
```
```sh
cd frontned
pnpm dev
```

## Perform Development:
1. edit or add file in `definations` folder
2. use vscode to edit generated code:
    * backend/src/docs/*
    * frontend/pages/[xorg]/*
3. when you wish to regenerate source code, then run:
```sh
sh regenerate.sh
```

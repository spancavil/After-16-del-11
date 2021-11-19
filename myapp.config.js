module.exports = {
  apps : [{
    name        : "myapp-front",
    script      : "./server.js",
    watch       : true,
    instances   : "max",
    exec       : "cluster",
    env: {
          "NODE_ENV": "development",
    },
    env_production : {
      "NODE_ENV": "production"
    }
  }]
}
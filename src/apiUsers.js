const Hapi = require('hapi');
const Context = require('./db/strategies/base/contextStrategy');
const Postgres = require('./db/strategies/postgres/postgres');
const UserSchema = require('./db/strategies/postgres/schemas/UserSchema');
const UserRoute = require('./routes/userRoutes')


const app = new Hapi.Server({
    port:5000
});

function mapRoutes(instance, methods) {
    return methods.map(method => instance[method]());
}

async function main(){
    const connection = Postgres.connect();
    const contextUser = new Context(new Postgres(connection, UserSchema));

    app.route([
        ...mapRoutes(new UserRoute(contextUser), UserRoute.methods()),
    ]);

    await app.start();
    console.log('Servidor rodando na porta ', app.info.port);
    
    return app;
}
module.exports = main();
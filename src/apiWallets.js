const Hapi = require('hapi');
const Context = require('./db/strategies/base/contextStrategy');
const Postgres = require('./db/strategies/postgres/postgres');
const WalletSchema = require('./db/strategies/postgres/schemas/WalletSchema');
const WalletRoute = require('./routes/walletRoutes')


const app = new Hapi.Server({
    port:5000
});

function mapRoutes(instance, methods) {
    return methods.map(method => instance[method]());
}

async function main(){
    const connection = Postgres.connect();
    const contextWallet = new Context(new Postgres(connection, WalletSchema));

    app.route([
        ...mapRoutes(new WalletRoute(contextWallet), UserRoute.methods())
    ]);

    await app.start();
    console.log('Servidor rodando na porta ', app.info.port);
    
    return app;
}
module.exports = main();
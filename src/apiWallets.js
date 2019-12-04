const Hapi = require('hapi');
const Context = require('./db/strategies/base/contextStrategy');
const Postgres = require('./db/strategies/postgres/postgres');
const WalletSchema = require('./db/strategies/postgres/schemas/WalletSchema');
const WalletRoutes = require('./routes/walletRoutes');


const app = new Hapi.Server({
    port:1111
});

function mapRoutes(instance, methods) {
    return methods.map(method => instance[method]());
}

async function main(){
    const connection = await Postgres.connect();
    const walletModel = await Postgres.defineModel(connection, WalletSchema);
    const contextWallet = new Context(new Postgres(connection, walletModel));

    app.route([
        ...mapRoutes(new WalletRoutes(contextWallet), WalletRoutes.methods())
    ]);

    await app.start();
    console.log('Servidor (Wallets) rodando na porta ', app.info.port);
    
    return app;
}
module.exports = main();
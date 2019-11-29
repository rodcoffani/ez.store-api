const Hapi = require('hapi');
const Context = require('./db/strategies/base/contextStrategy');
const Postgres = require('./db/strategies/postgres/postgres');
const DonationSchema = require('./db/strategies/postgres/schemas/DonationSchema');
const DonationRoute = require('./routes/donationRoutes')


const app = new Hapi.Server({
    port:5000
});

function mapRoutes(instance, methods) {
    return methods.map(method => instance[method]());
}

async function main(){
    const connection = Postgres.connect();
    const contextDonation = new Context(new Postgres(connection, DonationSchema));

    app.route([
        ...mapRoutes(new DonationRoute(contextDonation), DonationRoute.methods()),
    ]);

    await app.start();
    console.log('Servidor rodando na porta ', app.info.port);
    
    return app;
}
module.exports = main();
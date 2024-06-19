const Hapi = require('hapi');
const HapiJWT = require('hapi-auth-jwt2');

const Context = require('./db/strategies/base/contextStrategy');
const Postgres = require('./db/strategies/postgres/postgres');
const WalletSchema = require('./db/strategies/postgres/schemas/WalletSchema');
const WalletRoutes = require('./routes/walletRoutes');
const UserSchema = require('./db/strategies/postgres/schemas/UserSchema');
const UserRoutes = require('./routes/userRoutes');
const DonationSchema = require('./db/strategies/postgres/schemas/DonationSchema');
const DonationRoutes = require('./routes/donationRoutes');
const LoginRoutes = require('./routes/loginRoutes');

const AltUserSchema = require('./db/strategies/postgres/schemas/altUserSchema');

const JWT_SECRET = 'ch4v3_s3cr3t4'

const app = new Hapi.Server({
    port:2000
});

function mapRoutes(instance, methods) {
    return methods.map(method => instance[method]());
}

async function main(){
    const connection = await Postgres.connect();

    const walletModel = await Postgres.defineModel(connection, WalletSchema);
    const contextWallet = new Context(new Postgres(connection, walletModel));

    const userModel = await Postgres.defineModel(connection, UserSchema);
    const contextUser = new Context(new Postgres(connection, userModel));

    const donationModel = await Postgres.defineModel(connection, DonationSchema);
    const contextDonation = new Context(new Postgres(connection, donationModel));

    await app.register([
        HapiJWT,
    ]);

    app.auth.strategy('jwt', 'jwt', {
        key: JWT_SECRET,
        validate: (dado, request) => {
            return{
                isValid: true
            }
        }
    })
    app.auth.default('jwt');


    app.route([
        ...mapRoutes(new WalletRoutes(contextWallet), WalletRoutes.methods()),
        ...mapRoutes(new UserRoutes(contextUser), UserRoutes.methods()),
        ...mapRoutes(new DonationRoutes(contextDonation), DonationRoutes.methods()),
        ...mapRoutes(new LoginRoutes(JWT_SECRET, contextUser), LoginRoutes.methods()),
    ]);

    await app.start();
    console.log('Servidor rodando na porta ', app.info.port);
    
    return app;
}
module.exports = main();
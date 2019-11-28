const Hapi = require('hapi');
const Context = require('./db/strategies/base/contextStrategy');
const DonationSchema = require('./db/strategies/postgres/schemas/DonationSchema');
const UserSchema = require('./db/strategies/postgres/schemas/UserSchema');
const WalletSchema = require('./db/strategies/postgres/schemas/WalletSchema');

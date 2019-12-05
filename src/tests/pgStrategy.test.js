const assert = require('assert');
const Postgres = require('./../db/strategies/postgres/postgres');
const WalletSchema = require('./../db/strategies/postgres/schemas/WalletSchema')
const Context = require('./../db/strategies/base/contextStrategy');
let context = {};

describe('Postgres Strategy', function () {
    this.timeout(Infinity);
    this.beforeAll(async function () {
        const connection = await Postgres.connect();
        const model = await Postgres.defineModel(connection, WalletSchema);
        context = new Context(new Postgres(connection, model));
    });

    it('PostgresSQL Connection', async function() {
        const result = await context.isConnected();
        assert.equal(result, true);
    });

    it('Listar', async function () {
        const result = await context.read();
        assert.ok(result !== undefined)
    })
})
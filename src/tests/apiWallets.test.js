const assert = require('assert');
const api = require('./../apiWallets');
let app = {}

describe('Testes da API - Wallets', function () {
    this.beforeAll(async () => {
        app = await api;
    });

    it('Conferir saldo atual de uma carteira', async () => {
        const id = '26';

        const result = await app.inject({
            method: 'GET',
            url: `/wallet/${id}`,
        });

        // console.log('Result', result);
        
        const dados = JSON.parse(result.payload);
        const statusCode = result.statusCode;

        assert.deepEqual(statusCode, 200);
        assert.ok(dados.length === 1);
    });
});
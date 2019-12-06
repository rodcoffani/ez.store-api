const assert = require('assert');
const api = require('./../api');
let app = {}

describe.only('Testes da API - Wallets', function () {
    this.beforeAll(async () => {
        app = await api;
    });

    it('Conferir o saldo de uma carteira', async () => {
        const id = '26';

        const result = await app.inject({
            method: 'GET',
            url: `/wallet/${id}`,
        });
        const dados = JSON.parse(result.payload);
        const statusCode = result.statusCode;

        assert.deepEqual(statusCode, 200);
        assert.ok(dados.length === 1);
    });

    it('Listar todas as carteiras', async () => {
        const result = await app.inject({
            method: 'GET',
            url: '/wallets',
        });

        const dados = JSON.parse(result.payload);
        const statusCode = result.statusCode;

        assert.deepEqual(statusCode, 200);
        assert.ok(dados.length >= 1);        
    });

    it('Realizar uma compra', async () => {
        const id = '19';
        const expected = {
            item: '3'
        }

        const result = await app.inject({
            method: 'PATCH',
            url: `/purchase/${id}`,
            payload: JSON.stringify(expected),
        });

        const dados = JSON.parse(result.payload);
        const statusCode = result.statusCode;

        assert.deepEqual(dados.message, 'Compra realizada com sucesso!');
        assert.deepEqual(statusCode, 200);
    });
});
const assert = require('assert');
const api = require('./../api');
let app = {}

describe('Testes da API - Donations', function () {
    this.beforeAll(async () => {
        app = await api;
    });

    it('Conferir os detalhes de uma doação', async () => {
        const id = '10';

        const result = await app.inject({
            method: 'GET',
            url: `/donation/${id}`,
        });
        const dados = JSON.parse(result.payload);
        const statusCode = result.statusCode;

        assert.deepEqual(statusCode, 200);
        assert.ok(dados.length === 1);
    });

    it('Listar todas as doações', async () => {
        const result = await app.inject({
            method: 'GET',
            url: '/donations',
        });

        const dados = JSON.parse(result.payload);
        const statusCode = result.statusCode;

        assert.deepEqual(statusCode, 200);
        assert.ok(dados.length >= 1);        
    })
});
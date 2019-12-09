const assert = require('assert');
const api = require('./../api');
let app = {}

describe('Testes de Autenticação - Login', function () {
    this.beforeAll(async () => {
        app = await api;
    });

    it('Obter um token', async () => {
        const result = await app.inject({
            method: 'POST',
            url: '/login',
            payload: {
                username: 'TESTE@ezdevs',
                password: 'senha@123'
            },
        });

        const dados = JSON.parse(result.payload);
        const statusCode = result.statusCode;

        assert.deepEqual(statusCode, 200);
        assert.ok(dados.token.length >= 100);
    });
});
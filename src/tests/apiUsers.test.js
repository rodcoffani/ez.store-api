const assert = require('assert');
const api = require('./../api');
let app = {}

describe('Testes da API - Users', function () {
    this.beforeAll(async () => {
        app = await api;
    });

    it('Conferir um usuário cadastrado', async () => {
        const id = '26';

        const result = await app.inject({
            method: 'GET',
            url: `/user/${id}`,
        });
        const dados = JSON.parse(result.payload);
        const statusCode = result.statusCode;

        assert.deepEqual(statusCode, 200);
        assert.ok(dados.length === 1);
    });

    it('Listar todos os usuários', async () => {
        const result = await app.inject({
            method: 'GET',
            url: '/users',
        });

        const dados = JSON.parse(result.payload);
        const statusCode = result.statusCode;

        assert.deepEqual(statusCode, 200);
        assert.ok(dados.length >= 1);        
    })
});
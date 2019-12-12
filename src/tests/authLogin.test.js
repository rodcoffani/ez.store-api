const assert = require('assert');
const api = require('./../api');

const Context = require('./../db/strategies/base/contextStrategy');
const Postgres = require('./../db/strategies/postgres/postgres'); 
const AltUserSchema = require('./../db/strategies/postgres/schemas/altUserSchema')

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
                email: 'rodrigo.coffani@gmail.com',
                password: 'senha@123456'
            },
        });

        const dados = JSON.parse(result.payload);
        const statusCode = result.statusCode;

        assert.deepEqual(dados.message, 'Logado com sucesso!');
        assert.deepEqual(statusCode, 200);
        assert.ok(dados.token.length >= 100);
    });
});
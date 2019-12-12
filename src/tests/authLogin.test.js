const assert = require('assert');
const api = require('./../api');

const Context = require('./../db/strategies/base/contextStrategy');
const Postgres = require('./../db/strategies/postgres/postgres'); 

let app = {}

const TOKEN = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6IlRFU1RFQGV6ZGV2cyIsImlkIjo5OSwiaWF0IjoxNTc1OTI1ODA2fQ.zWmyO9LWBu54C_dOAXCPL4iD3iHbxYPWLIt8E4XNjrk'

const headers = {
    Authorization: TOKEN,
}

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
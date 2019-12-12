const assert = require('assert');
const api = require('./../api');
let app = {}

const TOKEN = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6IlRFU1RFQGV6ZGV2cyIsImlkIjo5OSwiaWF0IjoxNTc1OTI1ODA2fQ.zWmyO9LWBu54C_dOAXCPL4iD3iHbxYPWLIt8E4XNjrk'

const headers = {
    Authorization: TOKEN,
}

describe('Testes da API - Users', function () {
    this.beforeAll(async () => {
        app = await api;
    });

    it('Conferir um usuário cadastrado', async () => {
        const id = '26';

        const result = await app.inject({
            method: 'GET',
            headers,
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
            headers,
            url: '/users',
        });

        const dados = JSON.parse(result.payload);
        const statusCode = result.statusCode;

        assert.deepEqual(statusCode, 200);
        assert.ok(dados.length >= 1);        
    })
});
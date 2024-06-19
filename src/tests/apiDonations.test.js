const assert = require('assert');
const api = require('./../api');
let app = {}

const TOKEN = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6IlRFU1RFQGV6ZGV2cyIsImlkIjo5OSwiaWF0IjoxNTc1OTI1ODA2fQ.zWmyO9LWBu54C_dOAXCPL4iD3iHbxYPWLIt8E4XNjrk'

const headers = {
    Authorization: TOKEN,
}

describe('Testes da API - Donations', function () {
    this.beforeAll(async () => {
        app = await api;
    });

    it('Conferir os detalhes de uma doação', async () => {
        const id = '10';

        const result = await app.inject({
            method: 'GET',
            headers,
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
            headers,
            url: '/donations',
        });

        const dados = JSON.parse(result.payload);
        const statusCode = result.statusCode;

        assert.deepEqual(statusCode, 200);
        assert.ok(dados.length >= 1);        
    })
});
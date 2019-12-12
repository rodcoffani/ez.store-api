const assert = require('assert');
const api = require('./../api');
let app = {}

const TOKEN = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6IlRFU1RFQGV6ZGV2cyIsImlkIjo5OSwiaWF0IjoxNTc1OTI1ODA2fQ.zWmyO9LWBu54C_dOAXCPL4iD3iHbxYPWLIt8E4XNjrk'

const headers = {
    Authorization: TOKEN,
}

describe('Testes da API - Wallets', function () {
    this.beforeAll(async () => {
        app = await api;
    });

    it('Conferir o saldo de uma carteira', async () => {
        const id = '26';

        const result = await app.inject({
            method: 'GET',
            headers,
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
            headers,
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
            item: '1'
        }

        const result = await app.inject({
            method: 'PATCH',
            headers,
            url: `/purchase/${id}`,
            payload: JSON.stringify(expected),
        });

        const dados = JSON.parse(result.payload);
        const statusCode = result.statusCode;

        assert.deepEqual(dados.message, 'Compra realizada com sucesso!');
        assert.deepEqual(statusCode, 200);
    });
});
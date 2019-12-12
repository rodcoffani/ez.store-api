const assert = require('assert');

const PasswordHelper = require('./../helpers/passwordHelper');

const SENHA = "teste@123456"

describe.only('UserHelper testes', function () {
    it('Gerar um hash a partir de uma senha', async () => {
        const result = await PasswordHelper.hashPassword(SENHA);
        assert.ok(result.length >= 50);
    });

    it('Comparar uma senha e seu hash', async () => {
        const result = await PasswordHelper.hashPassword(SENHA);
        assert.ok(PasswordHelper.comparePassword(SENHA, result));
    })
});
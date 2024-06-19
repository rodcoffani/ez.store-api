const BaseRoute = require('./base/baseRoute');
const Joi = require('joi');
const Boom = require('boom');

const headers = Joi.object({
    authorization: Joi.string().required()
}).unknown();

class WalletRoutes extends BaseRoute {
    constructor(database) {
        super();
        this.db = database;
    }

    user() {
        return {
            path: '/user/{id}',
            method: 'GET',
            config: {
                validate: {
                    params: {
                        id: Joi.number().required()
                    },
                    failAction: (request, headers, erro) => {
                        throw erro;
                    }
                },
            },
            handler: async (request) => {
                try {
                    const {
                        id
                    } = request.params;

                    const result = await this.db.read({id: id});
                    if (result.length === 0) {
                        return Boom.preconditionFailed('ID não encontrado no banco')
                    }
                    return result;
                } catch (error) {
                    return Boom.internal('Erro na requisição do usuario!');
                }
            }

        }
    };

    users() {
        return {
            path: '/users',
            method: 'GET',
            config: {
                validate: {
                    failAction: (request, headers, erro) => {
                        throw erro;
                    }
                },
            },
            handler: async (request) => {
                try {
                    const result = await this.db.read();
                    if (result.length === 0) {
                        return Boom.notFound('Não existem usuários cadastrados');
                    }
                    return result;
                } catch (error) {
                    return Boom.internal('Erro na requisição da usuário!');
                }
            }
        }
    };
}

module.exports = WalletRoutes;
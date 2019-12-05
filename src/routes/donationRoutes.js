const BaseRoute = require('./base/baseRoute');
const Joi = require('joi');
const Boom = require('boom');

class WalletRoutes extends BaseRoute {
    constructor(database) {
        super();
        this.db = database;
    }

    donation() {
        return {
            path: '/donation/{id}',
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
                    return Boom.internal('Erro na requisição da doação!');
                }
            }

        }
    };

    donations() {
        return {
            path: '/donations',
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
                        return Boom.notFound('Não existem doações cadastradas');
                    }
                    return result;
                } catch (error) {
                    return Boom.internal('Erro na requisição da doação!');
                }
            }
        }
    };
}

module.exports = WalletRoutes;
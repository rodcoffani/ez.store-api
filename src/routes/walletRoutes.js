const BaseRoute = require('./base/baseRoute');
const Joi = require('joi');
const Boom = require('boom');

class WalletRoutes extends BaseRoute {
    constructor(database) {
        super();
        this.db = database;
    }

    wallet() {
        return {
            path: '/wallet/{id}',
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
                    return Boom.internal('Erro na requisição da carteira!');
                }
            }

        }
    };
}

module.exports = WalletRoutes;
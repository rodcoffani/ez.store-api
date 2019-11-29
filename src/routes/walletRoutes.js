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
            path: '/wallet',
            method: 'GET',
            config: {
                validate: {
                    query: {
                        id: Joi.number().required()
                    },
                    failAction: (request, headers, erro) => {
                        throw erro;
                    }
                },
            },
            handler: async (request) => {
                try {
                    const { id } = request.query;
                    
                    const result = await this.db.read(id);

                    if (result.n <= 0) {
                        return Boom.preconditionFailed('ID não encontrado no banco')
                    }
                    return result;
                }
                catch (error){
                    console.error('Erro na requisição da carteira!');
                    return Boom.internal();
                }
            }

        }
    };

    purchase() {

    }
}
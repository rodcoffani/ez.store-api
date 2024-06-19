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

    wallet() {
        return {
            path: '/wallet/{id}',
            method: 'GET',
            config: {
                validate: {
                    headers,
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

                    const result = await this.db.read({id});
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

    wallets() {
        return {
            path: '/wallets',
            method: 'GET',
            config: {
                validate: {
                    headers,
                    failAction: (request, headers, erro) => {
                        throw erro;
                    }
                },
            },
            handler: async (request) => {
                try {
                    const result = await this.db.read();
                    if (result.length === 0) {
                        return Boom.notFound('Não existem carteiras cadastradas');
                    }
                    return result;
                } catch (error) {
                    return Boom.internal('Erro na requisição da carteira!');
                }
            }
        }
    };

    purchase() {
        return{ 
            method: 'PATCH',
            path: '/purchase/{id}',
            config: {
                validate: {
                    headers,
                    params: {
                        id: Joi.number().required()
                    },
                    payload: {
                        item: Joi.number().required()
                    },
                    failAction: (request, headers, erro) => {
                        throw erro;
                    }
                },

                handler: async ({payload, params:{id}}) => {
                    try {                        
                        const dadosString = JSON.stringify(payload);
                        const dados = JSON.parse(dadosString);
                        
                        const pesquisa = await this.db.read({id});
                        if(pesquisa.length === 0){
                            return Boom.preconditionFailed('ID não existente no banco!')
                        }
                        
                        const [{balance}] = pesquisa;

                        
                        const valor = dados.item * 10;
                        
                        if(balance <= valor){
                            return Boom.preconditionFailed('Não há saldo suficiente para a compra...');
                        }
                        else{
                            const novoSaldo = {balance: (balance - valor)};
                            const result = await this.db.update(id, novoSaldo);
                            if (result.nModified <= 1) {
                                return Boom.preconditionFailed('Não foi possivel realizar a compra');
                            }
                            else {
                                return {
                                    message: 'Compra realizada com sucesso!',
                                    saldo: novoSaldo,
                                }
                            }
                        }
                    } catch (error) {
                        return Boom.internal('Erro interno durante a compra!');
                    }
                }
            }
        }
    };
}

module.exports = WalletRoutes;
const Joi = require('joi');
const Boom = require('boom');
const Jwt = require('jsonwebtoken');

const BaseRoute = require('./base/baseRoute');

const TestUser = {
    username: 'teste@ezdevs',
    senha: 'senha@123'
}

class LoginRoutes extends BaseRoute {
    constructor(secret) {
        super();
        this.secret = secret;
    }

    login() {
        return {
            path: '/login',
            method: 'POST',
            config: {
                auth: false,
                description: 'Obter o token para o usuário que logar',
                validate: {
                    payload: {
                        username: Joi.string().min(3).required(),
                        password: Joi.string().min(6).required()
                    },
                    failAction: (request, headers, erro) => {
                        throw erro;
                    }
                }
            },
            handler: async (request) => {
                const {
                    username,
                    password
                } = request.payload;

                if (username.toLowerCase() !== TestUser.username.toLowerCase() || password !== TestUser.senha) {
                    return Boom.unauthorized('Os dados informados não são compatíveis com os nossos');
                }

                const token = Jwt.sign({
                    username,
                    id: 99
                }, this.secret);

                return {
                    token
                };
            }
        }
    };
}

module.exports = LoginRoutes;
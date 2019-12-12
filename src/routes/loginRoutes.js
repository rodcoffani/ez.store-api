const Joi = require('joi');
const Boom = require('boom');
const Jwt = require('jsonwebtoken');

const BaseRoute = require('./base/baseRoute');
const PasswordHelper = require('./../helpers/passwordHelper');

const TestUser = {
    email: 'teste@ezdevs',
    senha: '123456'
}

class LoginRoutes extends BaseRoute {
    constructor(secret, db) {
        super();
        this.secret = secret;
        this.db = db;
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
                        email: Joi.string().min(3).required(),
                        password: Joi.string().min(6).required()
                    },
                    failAction: (request, headers, erro) => {
                        throw erro;
                    }
                }
            },
            handler: async (request) => {
                const {
                    email,
                    password
                } = request.payload;

                const [usuario] = await this.db.read({
                    email: email.toLowerCase()
                })                
                if(!usuario){
                    return Boom.unauthorized('O email informado não existe!')
                }
                const match = await PasswordHelper.comparePassword(password, usuario.password_hash);                
                
                if(!match){
                    return Boom.unauthorized('Email ou senha inválidos!')
                }

                const token = Jwt.sign({
                    email,
                    id: usuario.id,
                }, this.secret);

                return {
                    token,
                    message: 'Logado com sucesso!'
                };
            }
        }
    };
}

module.exports = LoginRoutes;
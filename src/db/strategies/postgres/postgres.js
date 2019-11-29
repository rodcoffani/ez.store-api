const ICrud = require('../interfaces/interfaceCrud');
const Sequelize = require('sequelize');

class Postgres extends ICrud {
    constructor(connection, schema){
        super();
        this._connection = connection;
        this._schema = schema;
    }

    async isConnected(){
        try {
            await this._connection.authenticate();
            return true;
        } catch (error) {
            console.log('Erro!!!', error);
            return false;
        }
    }

    static async defineModel(connection, schema) {
        const model = connection.define(
            schema.name, schema.schema, schema.options
        );
        await model.sync();
        return model;
    }

    async create(item){
        // return this._schema.create(item, {raw: true});
        const { dataValues } = await this._schema.create(item, {raw: true});
        return dataValues;
    }

    async update(id, item){
        return this._schema.update(item, {where: { id:id }});
    }

    async delete(id) {
        const query = id ? { id } : {};
        return this._schema.destroy({where: query});
    }

    async read(item = {}){
        return this._schema.findAll({where: item, raw: true});
    }

    static async connect(){
        const connection = new Sequelize(
            'ez_coins_api_dev',
            'postgres',
            'postgres',
            {
                host: 'localhost',
                dialect: 'postgres',
                quoteIdentifiers: false,
                operatorAliases: false,
                logging: false
            }
        )
        return connection;
    }
}

module.exports = Postgres;
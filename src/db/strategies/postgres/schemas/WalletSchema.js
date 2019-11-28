const Sequelize = require('sequelize');
const WalletSchema = {
    name: 'wallets',
    schema: {
        id: {
            type: Sequelize.BIGINT,
            required: true,
            primaryKey: true,
            autoIncrement: true
        },
        to_offer: {
            type: Sequelize.INTEGER,
            required: false
        },
        received: {
            type: Sequelize.INTEGER,
            required: false
        },
        balance: {
            type: Sequelize.INTEGER,
            required: false,
        },
        owner_user_id: {
            type: Sequelize.BIGINT,
            required: false,
        },
        inserted_at: {
            type: 'TIMESTAMP',
            defaultValue: Sequelize.literal('CURRENT_TIMESTAMP'),
            required: true
        },
        updated_at: {
            type: 'TIMESTAMP',
            defaultValue: Sequelize.literal('CURRENT_TIMESTAMP'),
            required: true
        }
    },
    options: {
        tableName: 'tb_wallets',
        freezeTableName: false,
        timestamps: true
    }
}

module.exports = WalletSchema;
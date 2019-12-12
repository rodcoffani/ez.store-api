const Sequelize = require('sequelize');
const AltUserSchema = {
    name: 'alt_users',
    schema: {
        id: {
            type: Sequelize.BIGINT,
            required: true,
            primaryKey: true,
            autoIncrement: true
        },
        name: {
            type: Sequelize.TEXT,
            required: false
        },
        email: {
            type: Sequelize.TEXT,
            required: false
        },
        password_hash: {
            type: Sequelize.TEXT,
            required: false,
        },
        avatar: {
            type: Sequelize.TEXT,
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
        tableName: 'alt_users',
        freezeTableName: false,
        timestamps: false
    }
}

module.exports = AltUserSchema;
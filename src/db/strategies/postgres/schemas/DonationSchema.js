const Sequelize = require('sequelize');
const DonationSchema = {
    name: 'donations',
    schema: {
        id: {
            type: Sequelize.BIGINT,
            required: true,
            primaryKey: true,
            autoIncrement: true
        },
        quantity: {
            type: Sequelize.INTEGER,
            required: false
        },
        reason: {
            type: Sequelize.TEXT,
            required: false
        },
        sender_user_id: {
            type: Sequelize.BIGINT,
            required: false
        },
        receiver_user_id: {
            type: Sequelize.BIGINT,
            required: false
        },
        donate_at: {
            type: 'TIMESTAMP',
            required: true
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
        tableName: 'tb_donations',
        freezeTableName: false,
        timestamps: true
    }
}

module.exports = DonationSchema;
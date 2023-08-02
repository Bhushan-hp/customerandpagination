module.exports = (sequelize, Sequelize) => {
    const model = sequelize.define(
        "users", {
            id: {
                type: Sequelize.INTEGER,
                primaryKey: true,
                autoIncrement: true,
                allowNull: false,
            },
            first_name: {
                type: Sequelize.STRING(150),
                allowNull: false,
                validate: {
                    notEmpty: true,
                    max: 12,
                    min: 3,
                }
            },
            last_name: {
                type: Sequelize.STRING(150),
                allowNull: false,
                validate: {
                    notEmpty: true,
                    max: 12,
                    min: 3,
                }
            },
            city: {
                type: Sequelize.STRING(150),
                allowNull: false,

            },
            company: {
                type: Sequelize.STRING(150),
                allowNull: false,

            },

        },
    )
    return model;
};
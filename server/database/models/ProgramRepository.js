const AbstractRepository = require("./AbstractRepository");

class ProgramRepository extends AbstractRepository {
    constructor() {
        // Call the constructor of the parent class (AbstractRepository)
        // and pass the table name "category" as configuration
        super({ table: "program" });
    }

    async readAll() {

        const [rows] = await this.database.query(`select * from ${this.table}`);

        return rows;
    }

}

module.exports = ProgramRepository;
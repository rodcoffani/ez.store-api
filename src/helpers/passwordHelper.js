const Argon2 = require('argon2');

const hashAsync = Argon2.hash;
const compareAsync = Argon2.verify;

const SALT = 8;

class PasswordHelper {
    static hashPassword (pass) {
        return hashAsync(pass, SALT)
    }
    static comparePassword (pass, hash) {
        return compareAsync(hash, pass);
    }
}

module.exports = PasswordHelper;
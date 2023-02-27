const db = require("../../data/db-config");

const getAll = () => {

  return db("accounts");
}

const getById = id => {
  
  return db("accounts").where({id}).first();
}

const create = account => {
  
  const insertedAccount = db("accounts").insert(account).then(id=>{
    return getById(id[0]);
  });
  return insertedAccount;
}

const updateById = (id, account) => {
  
  return db("accounts").where({id}).update(account).then(rows =>{
    return getById(id);
  });
}

const deleteById = id => {
  
  return db("accounts").where("id",id).del();
}

module.exports = {
  getAll,
  getById,
  create,
  updateById,
  deleteById,
}

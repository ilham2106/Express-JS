const foodsmodel = require('../models/foodsModel')
const potosmodel = require('../models/potosmodel')
const upload = require('../helper/fileupload')
const {Op} = require('sequelize')

const methodCondition = async (req, res) =>{
    const param1 = req.body.npm
    const param2 = req.body.namamahasiswa

    try{
        const getData = await foodsmodel.findAll({
            attributes:[['namamahasiswa','nama'],['prodi','prodi']],
            // where:{ 
            //     // [Op.or]:[
            //     //     {npm: param1},
            //     //     {namamahasiswa: param2},
            //     // ]
            //     // [Op.and]:[
            //     //     {npm: param1},
            //     //     {namamahasiswa: param2},
            //     // ]
            //     // npm :{
            //     //     [Op.in]:[param1, param2]
            //     // }
            //     // npm :{
            //     //     [Op.like]: '%' + param1 + '%'
            //     // }
            // } 

            order:[['namamahasiswa','asc']]
        });
        

        res.json(getData);
    }catch (err){
        console.error(err.message);
        res.status(500).send("server eror")
    }
}

const methodUpload = async (req, res) =>{
    try{
        //untuk upload file 
        await upload(req, res);
        if(req.file == undefined){
            console.error(req.file)
            return res.status(400).send({message: "Image blm di pilih"})
        }

        //untuk db
        potosmodel.create({
            idfoods : req.body.idfoods,
            path:req.file.originalname
        }).then((data)=>{
            res.status(200).send({
                message:"File Berhasil di Upload"+ data.path
            })
        })

    }catch (err) {
        console.error(err.message);
        res.status(500).send("server eror")
    }
}

const methodPost = async (req, res) =>{
    try{
        const { npm, namamahasiswa, prodi} = req.body;

        const store = new foodsmodel({
            npm, 
            namamahasiswa, 
            prodi
        });

        await store.save();

        res.json(store);
    }catch (err) {
        console.error(err.message);
        res.status(500).send("server eror")
    }
}

const methodGet = async (req, res) =>{
    try{
        const getData = await foodsmodel.findAll({});

        res.json(getData);
    }catch (err){
        console.error(err.message);
        res.status(500).send("server eror")
    }
}


const methodGetId = async (req, res) =>{
    try{
        const id = req.params.id
        const getData = await foodsmodel.findOne({
            where: {id:id}
        });

        res.json(getData);
    }catch (err){
        console.error(err.message);
        res.status(500).send("server eror")
    }
}

const methodPut = async (req, res) =>{
    try{
        const {npm, namamahasiswa, prodi} = req.body
        const id = req.params.id

        const updateMhs = await foodsmodel.update({
            npm,namamahasiswa,prodi
        },
            { where: { id: id } }
        );

        await updateMhs;

        res.json("berhasil di update")
    }catch (err){
        console.error(err.message);
        res.status(500).send("server eror");
    }
}

const methodDelete = async (req, res) =>{
    try {
        const id = req.params.id;

        const deleteMhs = await foodsmodel.destroy({
            where: { id : id }
        });

        await deleteMhs;

        res.json("berhasil dihapus");
    }catch (err){
        console.error(err.message);
        res.status(500).send("server eror");
    }
}


module.exports = {
    methodPost, methodGet, methodGetId, methodPut, methodDelete, methodUpload, methodCondition
}
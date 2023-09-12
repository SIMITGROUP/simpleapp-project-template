let product = {
    organization_id:1,
    branch_id:1,    
    product_id:100,
    product_code: 'prd1',
    product_name: 'Product 1',
    description:'',
    uom: 'unit',
    sku: 'SIKEU001',
    isactive:true,
    level:{id:1,label:"level1"},
    tags:['book','longman'],
    defaultprice:120.00,
    pricelist:[
      {group:{id:'100',label:"group1"},unitprice:100,effectivedate:'2000-01-01',minimalOrder:5}
    ]
  }
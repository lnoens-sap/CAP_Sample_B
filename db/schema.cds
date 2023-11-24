namespace CAPSampleB;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Products
{
    key ID : UUID;
    name : String(50);
    price : Decimal(6,2);
    description : String(100);
    suppliers : Association to many Suppliers on suppliers.products = $self;
}

entity Suppliers
{
    key ID : UUID;
    companyName : String(100);
    country : String(100);
    tax : Boolean;
    products : Association to one Products;
}

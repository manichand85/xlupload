namespace com.mani.chand;
using { managed, cuid } from '@sap/cds/common';

entity cars:managed, cuid {
    @title: 'Make'
    make: String(20);
    @title: 'Model'
    model: String(20);
    @title: 'Year'
    year: Integer;
    @title: 'Color'
    color: String(15);
    @title: 'License Plate'
    licensePlate: String(10);
    @title: 'Owner'
    owner: String(50);

    cus: Composition of many customers on cus.id=$self;
}

entity customers:managed, cuid {
    @title: 'Id'
    id: Association to one cars;
    @title: 'Name'
    name: String(50);
    @title: 'Address'
    address: String(100);
    @title: 'Phone'
    phone: String(15);
    @title: 'Email'
    email: String(100);
}


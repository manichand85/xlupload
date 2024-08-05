using {nnrg} from './hero';

annotate nnrg.cars with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Label:'Make',
            Value : make
        },
        {
            $Type : 'UI.DataField',
            Value : model
        },
        {
            $Type : 'UI.DataField',
            Value : year
        },
        {
            $Type : 'UI.DataField',
            Value : color
        },
        {
            $Type : 'UI.DataField',
            Value : licensePlate
        },
        {
            $Type : 'UI.DataField',
            Value : owner
        },
       
    ],  
);


annotate nnrg.cars with @(       
    UI.FieldGroup #carsInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label:'Make',
            Value : make
        },
        {
            $Type : 'UI.DataField',
            Value : model
        },
        {
            $Type : 'UI.DataField',
            Value : year
        },
        {
            $Type : 'UI.DataField',
            Value : color
        },
        {
            $Type : 'UI.DataField',
            Value : licensePlate
        },
        {
            $Type : 'UI.DataField',
            Value : owner
        },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'carsInfoFacet',
            Label : 'cars Information',
            Target : '@UI.FieldGroup#carsInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'CustomersInfoFacet',
            Label : 'Customers Information',
            Target : 'cus/@UI.LineItem',
        },
    ],    
);


annotate nnrg.customers with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Label:'Id',
            Value : id_ID
        },
        {
            $Type : 'UI.DataField',
            Value : address
        },
        {
            $Type : 'UI.DataField',
            Value : phone
        },
        {
            $Type : 'UI.DataField',
            Value : email
        },
    ],  
);


annotate nnrg.customers with @(       
    UI.FieldGroup #customersInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label:'Id',
            Value : id_ID
        },
        {
            $Type : 'UI.DataField',
            Value : address
        },
        {
            $Type : 'UI.DataField',
            Value : phone
        },
        {
            $Type : 'UI.DataField',
            Value : email
        },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'customersInfoFacet',
            Label : 'customers Information',
            Target : '@UI.FieldGroup#customersInformation',
        },
    ],    
);
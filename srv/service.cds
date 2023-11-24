using { CAPSampleB as my } from '../db/schema';

@path : '/service/CAP_Sample_B'
service SampleServiceService
{
    entity Products as
        projection on my.Products;

    @odata.draft.enabled
    entity Suppliers as
        projection on my.Suppliers;
}

annotate SampleServiceService with @requires :
[
    'authenticated-user'
];

using { com.mani.chand as db } from '../db/schema';

service nnrg{
    
    entity cars as projection on db.cars;
    
    
}

annotate nnrg.cars with @odata.draft.enabled;



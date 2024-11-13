using { magus } from '../db/schema';

service AdminService @(path: '/admin') {
    entity Species as projection on magus.Species;
    entity Classes as projection on magus.Class;
}

@cds.autoexpose entity MainClasses as projection on magus.MainClass;

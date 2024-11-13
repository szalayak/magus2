using {
    managed,
    sap.common.CodeList as CodeList
} from '@sap/cds/common';

namespace magus;

entity Species : managed {
    key id          : String;
        name        : localized String;
        description : localized LargeString;
        image       : LargeBinary;
}

entity MainClass : CodeList {
    key id : String;
}

entity Class : managed {
    key id          : String;
        mainClass   : Association to one MainClass;
        name        : localized String;
        description : localized LargeString;
        image       : LargeBinary;
}

entity Alignment : CodeList {
    key id : String;
}
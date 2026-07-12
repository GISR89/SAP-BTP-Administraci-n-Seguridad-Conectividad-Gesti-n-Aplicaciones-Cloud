using my.bookshop as my from '../db/schema';

@odata
service CatalogService {
    entity Books
     @(restrict: [
        {
            grant: ['READ'],
            to   : ['CAP_Viewer']
        },
       {
            grant: ['*'],
            to   : ['CAP_Admin']
        }
       ]) 
    as projection on my.Books;
}

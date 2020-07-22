enum OrderBy { DATE, PRICE }

//Constantes binarias
const VENDOR_TYPE_PARTICULAR = 1 << 0;
//0001
const VENDOR_TYPE_PROFESSIONAL = 1 << 1;
//0010

class Filter {

  Filter({
    this.search,
    this.orderBy,
    this.minPrice,
    this.maxPrice,
    this.vendorType
  });
  
  String search;
  OrderBy orderBy;
  int minPrice;
  int maxPrice;
  int vendorType;
}

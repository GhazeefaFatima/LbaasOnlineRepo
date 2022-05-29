// Products
export interface Product {
    id?: number;
    title?: string;
    description?: string;
    type?: string;
    brand?: string;
    collection?: any[];
    category?: string;
    price?: number;
    sale?: boolean;
    discount?: number;
    stock?: number;
    new?: boolean;
    quantity?: number;
    tags?: any[];
    variants?: Variants[];
    images?: Images[];
    image_src?: string;
}



export interface ProductList {
    product_id?: any;
    category_name?: string;
    product_name?: string;
    image_src?: string;
    subcat_name?: string;
    size_name?: string;
    product_img? : string;
    is_main_page?: boolean;
    is_new_product?: boolean;
    is_best_selling?: boolean;
    is_featured_product?: boolean;
    is_on_sale?: boolean;
    price?: number;
   description?: string;
   product_image?: string
   ProductDetail?: Image[];


}
export interface Image {
   
    image_src?: string;
  
}





export interface Variants {
    variant_id?: number;
    id?: number;
    sku?: string;
    size?: string;
    color?: string;
    image_id?: number;
}

export interface Images {
    image_id?: number;
    id?: number;
    alt?: string;
    src?: string;
    variant_id?: any[];
}
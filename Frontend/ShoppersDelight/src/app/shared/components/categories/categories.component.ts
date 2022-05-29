import { Component, OnInit } from '@angular/core';
import { Product } from '../../classes/product';
import { ProductService } from '../../services/product.service';

@Component({
  selector: 'app-categories',
  templateUrl: './categories.component.html',
  styleUrls: ['./categories.component.scss']
})
export class CategoriesComponent implements OnInit {

  public products: Product[] = [];
  public collapse: boolean = true;

  constructor(public productService: ProductService) { 
    debugger;
    //this.productService.getProducts.subscribe(response => this.products = response);
    //console.log(this.products);
    this.productService.getProducts.subscribe(response => {
   
      console.log("dhDAGgdaFDdhg",response)
       this.products = response;
    });
  }

  ngOnInit(): void {
  }

  get filterbyCategory() {
    
    const category = [...new Set(this.products.map(product => product.type))]
    
    return category
  }

}

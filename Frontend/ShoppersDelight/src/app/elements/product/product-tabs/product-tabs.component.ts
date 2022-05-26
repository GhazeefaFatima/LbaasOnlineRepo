import { Component, OnInit } from '@angular/core';
import { Product } from '../../../shared/classes/product';
import { ProductService } from '../../../shared/services/product.service';

@Component({
  selector: 'app-product-tabs',
  templateUrl: './product-tabs.component.html',
  styleUrls: ['./product-tabs.component.scss']
})
export class ProductTabsComponent implements OnInit {

  public products: Product[] = [];
debugger
  constructor(public productService: ProductService) { 
    this.productService.getProducts.subscribe((data)=>{
      debugger
      this.products = data
      console.log("hheheehe",this.products)
    });
  }

  ngOnInit(): void {
  }

}

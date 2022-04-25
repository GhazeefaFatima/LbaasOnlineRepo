import { Component, OnInit } from '@angular/core';
import { SharedService } from '../../shared.service';
@Component({
  selector: 'app-show',
  templateUrl: './show.component.html',
  styleUrls: ['./show.component.css']
})
export class ShowComponent implements OnInit {

  constructor(private service:SharedService) { }
ProductList:any=[]

  ngOnInit(): void {
    this.refreshDepList()
  }

refreshDepList(){
  this.service.getAllProducts().subscribe(data=>{
    this.ProductList     =data;
    
    console.log(data);
  });
}
}

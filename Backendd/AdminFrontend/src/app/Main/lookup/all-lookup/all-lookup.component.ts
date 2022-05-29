import { Component, OnInit } from '@angular/core';
import { LookupValuesType} from '../../../shared/LookupValues'
@Component({
  selector: 'app-all-lookup',
  templateUrl: './all-lookup.component.html',
  styleUrls: ['./all-lookup.component.css']
})
export class AllLookupComponent implements OnInit {

  Category =LookupValuesType.Category; 
   SubCategory =LookupValuesType.SubCategory;
   Size =LookupValuesType.Size;
  constructor() { }

  ngOnInit(): void {

  }


}

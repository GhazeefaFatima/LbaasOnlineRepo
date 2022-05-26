import { Component, OnInit } from '@angular/core';
import {LookupService} from '../../lookup.service'

@Component({
  selector: 'app-lookup-detail',
  templateUrl: './lookup-detail.component.html',
  styleUrls: ['./lookup-detail.component.css']
})
export class LookupDetailComponent implements OnInit {

  constructor(private lookupService: LookupService,) { }

  ngOnInit(): void {
   
  }
 

}

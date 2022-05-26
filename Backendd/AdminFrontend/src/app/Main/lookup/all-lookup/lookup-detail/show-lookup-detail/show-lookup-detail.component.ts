import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router'
import {LookupService} from '../../../lookup.service'

@Component({
  selector: 'app-show-lookup-detail',
  templateUrl: './show-lookup-detail.component.html',
  styleUrls: ['./show-lookup-detail.component.css']
})
export class ShowLookupDetailComponent implements OnInit {
    id : string|null= "";
    lookupvalue :any;
  constructor(private route: ActivatedRoute,private lookupService: LookupService ) { }

  ngOnInit(): void {
    debugger;
 if(this.route.snapshot.paramMap.get('id')!= null)
 { 
   this.id = this.route.snapshot.paramMap.get('id') ||  '';
   this.getLookupValues(this.id);
 } 
  }
  getLookupValues(id: string): void {
    debugger;
    this.lookupService.getAllLookupByCatId(this.id||'').subscribe(res => {
      debugger;
      lookupvalue=res;

      console.log(res[0]);
      JSON.parse(jsonArray)
    });
  }
}

import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {ProductComponent} from "./Main/product/product.component";
import {AllLookupComponent} from "./Main/lookup/all-lookup/all-lookup.component";
import {ShowLookupDetailComponent} from "./Main/lookup/all-lookup/lookup-detail/show-lookup-detail/show-lookup-detail.component";
const routes: Routes = [
{path:'',component:ProductComponent} ,
{path:'product',component:ProductComponent},
{path:'show-lookup/:id',component:ShowLookupDetailComponent},
{path:'lookup',component:AllLookupComponent}
];




@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

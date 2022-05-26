import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ProductComponent } from './Main/product/product.component';
import { AddEditComponent } from './Main/product/add-edit/add-edit.component';
import { ShowComponent } from './Main/product/show/show.component';

import {HttpClientModule} from '@angular/common/http';
import {FormsModule , ReactiveFormsModule} from '@angular/forms';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { AllLookupComponent } from './Main/lookup/all-lookup/all-lookup.component';
import { ShowLookupDetailComponent } from './Main/lookup/all-lookup/lookup-detail/show-lookup-detail/show-lookup-detail.component';
import { AddUpdateLookupComponent } from './Main/lookup/all-lookup/lookup-detail/add-update-lookup/add-update-lookup.component';
import { LookupDetailComponent } from './Main/lookup/all-lookup/lookup-detail/lookup-detail.component';
@NgModule({
  declarations: [
    AppComponent,
    ProductComponent,
    AddEditComponent,
    ShowComponent,
    AllLookupComponent,
    ShowLookupDetailComponent,
    AddUpdateLookupComponent,
    LookupDetailComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }

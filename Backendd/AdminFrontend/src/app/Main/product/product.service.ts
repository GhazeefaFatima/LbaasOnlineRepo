import { Injectable } from '@angular/core';
import {HttpClient } from '@angular/common/http';
import { Observable, observable } from 'rxjs';
import {APIUrl} from '../../shared/Model';
import {environment} from '../../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  constructor(private http:HttpClient) { }
  getAllCategory():Observable<any[]>
  {
    //debugger;
    return this.http.get<any>(`${environment.API}${APIUrl.GET_CATEGORY}`)
  //  return this.http.get<any>(APIUrl. {}+ "Category")
  }
}

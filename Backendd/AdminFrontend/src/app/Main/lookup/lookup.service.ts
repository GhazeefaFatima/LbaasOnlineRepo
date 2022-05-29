import { Injectable } from '@angular/core';
import {HttpClient } from '@angular/common/http';
import { Observable, observable } from 'rxjs';
import {APIUrl} from '../../shared/Model';
import {environment} from '../../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class LookupService {

  constructor(private http:HttpClient) { }
  getAllLookupByCatId( id:string ):Observable<any[]>
  {
    debugger;
    return this.http.get<any>(`${environment.API}${APIUrl.GET_LookupValue}/`+id)
  }
}

import { Injectable } from '@angular/core';
import {HttpClient } from '@angular/common/http';
import { Observable, observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class SharedService {
  readonly APIUrl="https://localhost:44334/api/"
  readonly PhotoUrl =""

  constructor(private http:HttpClient) { }

  getAllProducts():Observable<any[]>
  {
    debugger;
    return this.http.get<any>(this.APIUrl+"Category")
  }
}

import { Component, OnInit } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { Validators } from '@angular/forms';

@Component({
  selector: 'app-add-edit',
  templateUrl: './add-edit.component.html',
  styleUrls: ['./add-edit.component.css']
})
export class AddEditComponent implements OnInit {
  productForm = this.fb.group({
    productName: ['', Validators.required],
    productDesc: [''],
    categoryId: [''],
    address: this.fb.group({
      street: [''],
      city: [''],
      state: [''],
      zip: ['']
    }),
    aliases: this.fb.array([
      this.fb.control('')
    ])
  });
  constructor(private fb: FormBuilder) { 
    
  }

  ngOnInit(): void {
    
  }
  onSubmit() {
    // TODO: Use EventEmitter with form value
    console.warn(this.productForm.value);
  }
}

import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AddUpdateLookupComponent } from './add-update-lookup.component';

describe('AddUpdateLookupComponent', () => {
  let component: AddUpdateLookupComponent;
  let fixture: ComponentFixture<AddUpdateLookupComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AddUpdateLookupComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AddUpdateLookupComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

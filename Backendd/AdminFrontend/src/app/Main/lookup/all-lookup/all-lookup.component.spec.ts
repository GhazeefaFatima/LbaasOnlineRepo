import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AllLookupComponent } from './all-lookup.component';

describe('AllLookupComponent', () => {
  let component: AllLookupComponent;
  let fixture: ComponentFixture<AllLookupComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AllLookupComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AllLookupComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

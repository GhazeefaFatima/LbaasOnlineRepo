import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LookupDetailComponent } from './lookup-detail.component';

describe('LookupDetailComponent', () => {
  let component: LookupDetailComponent;
  let fixture: ComponentFixture<LookupDetailComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ LookupDetailComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(LookupDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

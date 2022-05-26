import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ShowLookupDetailComponent } from './show-lookup-detail.component';

describe('ShowLookupDetailComponent', () => {
  let component: ShowLookupDetailComponent;
  let fixture: ComponentFixture<ShowLookupDetailComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ShowLookupDetailComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ShowLookupDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

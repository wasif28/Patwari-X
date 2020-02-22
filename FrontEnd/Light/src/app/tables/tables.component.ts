import { Component, OnInit } from '@angular/core';

declare interface TableData {
    headerRow: string[];
    dataRows: string[][];
}

@Component({
  selector: 'app-tables',
  templateUrl: './tables.component.html',
  styleUrls: ['./tables.component.css']
})
export class TablesComponent implements OnInit {
    public tableData1: TableData;
    public tableData2: TableData;
    tableData3: { headerRow: string[]; dataRows: string[][]; };

  constructor() { }

  ngOnInit() {
      this.tableData1 = {
          headerRow: [ 'ID', 'Name', 'City', 'Size'],
          dataRows: [
              ['1', 'Bahria Town phase 4', 'Islamabad', '367 sq feet'],
              ['2', 'Naval Anchorage',  'Islamabad', '237 sq feet'],
              ['3', 'Emar homes',  'Islamabad', '568 sq feet'],
              ['4', 'TopCity',  'Islamabad', '385 sq feet'],
              ['5', 'SA Gardens', 'Islamabad', '632 sq feet'],
              ['6', 'DHA2', 'Islamabad', '715 sq feet']
          ]
      };
      this.tableData2 = {
          headerRow: [ 'ID', 'Name',  'Size', 'City' ],
          dataRows: [
              ['1', 'Bahria Town phase 4', '198 sq feet', 'Islamabad' ],
              ['2', 'Naval Anchorage', '2389 sq feet', 'Islamabad'],
              ['3', 'Emar homes', '5642 sq feet', 'Islamabad' ],
              ['4', 'TopCity', '335 sq feet', 'Islamabad' ],
              ['5', 'SA Gardens', '642 sq feet',  'Islamabad', ],
              ['6', 'DHA2', '715 sq feet',  'Islamabad' ]
          ]
      };



      this.tableData3 = {
          headerRow: [ 'ID', 'Name', 'City', 'Bid'],
          dataRows: [
              ['1', 'Bahria Town phase 4', 'Islamabad', '1.1 Crore '],
              ['2', 'Naval Anchorage',  'Islamabad', '3 Crore'],
              ['3', 'Emar homes',  'Islamabad', '1.6 Crore'],
              ['4', 'TopCity',  'Islamabad', '3.4 Crore'],
              ['5', 'SA Gardens', 'Islamabad', '2.8 Crore'],
              ['6', 'DHA2', 'Islamabad', '2 Crore']
          ]
      };



  }

}

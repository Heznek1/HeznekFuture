import { DxDataGrid, DxScrolling, DxSorting, DxLoadPanel } from 'devextreme-vue/data-grid';
import { generateData } from './data.js';

export default {
  components: {
    DxDataGrid,
    DxScrolling,
    DxSorting,
    DxLoadPanel
  },
  computed: {
    dataSource() {
      return generateData(100000);
    }
  },
  methods: {
    customizeColumns(columns) {
      columns[0].width = 70;
    }
  }
};

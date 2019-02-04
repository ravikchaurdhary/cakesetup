var TableDatatablesResponsive = function () {


    
  var emailTemplatesListingTable = function () {

      var table = $('#emailTemplatesListingTable');

      var oTable = table.dataTable({

        // Internationalisation. For more info refer to http://datatables.net/manual/i18n
        "processing": true,
              "serverSide": true,
              "ajax": base_url+"ajax/getEmailTemplatesListing",
        "language": {
          "aria": {
            "sortAscending": ": activate to sort column ascending",
            "sortDescending": ": activate to sort column descending"
          },
          "emptyTable": "Records not found.",
          "info": "Showing _START_ to _END_ of _TOTAL_ entries",
          // "infoEmpty": "No entries found",
          "infoFiltered": "(filtered1 from _MAX_ total entries)",
          "lengthMenu": "_MENU_ entries",
          "search": "Search:",
          "zeroRecords": "No matching records found"
        },

        // Or you can use remote translation file
        //"language": {
        //   url: '//cdn.datatables.net/plug-ins/3cfcc339e89/i18n/Portuguese.json'
        //},

        // setup buttons extentension: http://datatables.net/extensions/buttons/
        buttons: [
          { extend: 'print', className: 'btn dark btn-outline' , filename: "set_filename_csv"},
          //{ extend: 'pdf', className: 'btn green btn-outline' },
          { extend: 'csv', className: 'btn purple btn-outline ',filename: "set_filename_csv" },

        ],

        // setup responsive extension: http://datatables.net/extensions/responsive/
        responsive: false,

        "order": [
          [0, 'desc']
        ],
        "columnDefs": [
               { orderable: false, targets: -1 }
              ],
        
        "lengthMenu": [
          [5, 10, 15, 20, -1],
          [5, 10, 15, 20, "All"] // change per page values here
        ],
        // set the initial value
        "pageLength": 10,
        "dom": "<'row'><'row'<'col-md-6 col-sm-12'l><'col-md-4 col-sm-12'f><'col-md-2 col-sm-12'B>r><'table-scrollable table-responsive't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",
        //"dom": "<'row' <'col-md-12'B>><'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r><'table-scrollable table-responsive't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>", // horizobtal scrollable datatable

        // Uncomment below line("dom" parameter) to fix the dropdown overflow issue in the datatable cells. The default datatable layout
        // setup uses scrollable div(table-scrollable table-responsive) with overflow:auto to enable vertical scroll(see: assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js). 
        // So when dropdowns used the scrollable div should be removed. 
        //"dom": "<'row' <'col-md-12'T>><'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r>t<'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",
      });
    
    }

    var usersListingTable = function () {

      var table = $('#usersListingTable');

      var oTable = table.dataTable({

        // Internationalisation. For more info refer to http://datatables.net/manual/i18n
        "processing": true,
              "serverSide": true,
              "ajax": base_url+"ajax/getUsersListing",
        "language": {
          "aria": {
            "sortAscending": ": activate to sort column ascending",
            "sortDescending": ": activate to sort column descending"
          },
          "emptyTable": "Records not found.",
          "info": "Showing _START_ to _END_ of _TOTAL_ entries",
          // "infoEmpty": "No entries found",
          "infoFiltered": "(filtered1 from _MAX_ total entries)",
          "lengthMenu": "_MENU_ entries",
          "search": "Search:",
          "zeroRecords": "No matching records found"
        },

        // Or you can use remote translation file
        //"language": {
        //   url: '//cdn.datatables.net/plug-ins/3cfcc339e89/i18n/Portuguese.json'
        //},

        // setup buttons extentension: http://datatables.net/extensions/buttons/
        buttons: [
          { extend: 'print', className: 'btn dark btn-outline' , filename: "set_filename_csv"},
          //{ extend: 'pdf', className: 'btn green btn-outline' },
          { extend: 'csv', className: 'btn purple btn-outline ',filename: "set_filename_csv" },

        ],

        // setup responsive extension: http://datatables.net/extensions/responsive/
        responsive: false,

        "order": [
          [0, 'desc']
        ],
        "columnDefs": [
               { orderable: false, targets: -1 }
              ],
        
        "lengthMenu": [
          [5, 10, 15, 20, -1],
          [5, 10, 15, 20, "All"] // change per page values here
        ],
        // set the initial value
        "pageLength": 10,
        "dom": "<'row'><'row'<'col-md-6 col-sm-12'l><'col-md-4 col-sm-12'f><'col-md-2 col-sm-12'B>r><'table-scrollable table-responsive't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",
        //"dom": "<'row' <'col-md-12'B>><'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r><'table-scrollable table-responsive't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>", // horizobtal scrollable datatable

        // Uncomment below line("dom" parameter) to fix the dropdown overflow issue in the datatable cells. The default datatable layout
        // setup uses scrollable div(table-scrollable table-responsive) with overflow:auto to enable vertical scroll(see: assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js). 
        // So when dropdowns used the scrollable div should be removed. 
        //"dom": "<'row' <'col-md-12'T>><'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r>t<'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",
      });
      
  }    
  
  var cronJobListingTable = function () {

      var table = $('#cronJobListingTable');

      var oTable = table.dataTable({

        // Internationalisation. For more info refer to http://datatables.net/manual/i18n
        "processing": true,
              "serverSide": true,
              "ajax": base_url+"ajax/getCronJobListing", 
        "language": {
          "aria": {
            "sortAscending": ": activate to sort column ascending",
            "sortDescending": ": activate to sort column descending"
          },
          "emptyTable": "Records not found.",
          "info": "Showing _START_ to _END_ of _TOTAL_ entries",
          // "infoEmpty": "No entries found",
          "infoFiltered": "(filtered1 from _MAX_ total entries)",
          "lengthMenu": "_MENU_ entries",
          "search": "Search:",
          "zeroRecords": "No matching records found"
        },

        // Or you can use remote translation file
        //"language": {
        //   url: '//cdn.datatables.net/plug-ins/3cfcc339e89/i18n/Portuguese.json'
        //},

        // setup buttons extentension: http://datatables.net/extensions/buttons/
        buttons: [
          { extend: 'print', className: 'btn dark btn-outline' , filename: "set_filename_csv"},
          //{ extend: 'pdf', className: 'btn green btn-outline' },
          { extend: 'csv', className: 'btn purple btn-outline ',filename: "set_filename_csv" },

        ],

        // setup responsive extension: http://datatables.net/extensions/responsive/
        responsive: false,

        "order": [
          [0, 'desc']
        ],
        "columnDefs": [
               { orderable: false, targets: -1 }
              ],
        
        "lengthMenu": [
          [5, 10, 15, 20, -1],
          [5, 10, 15, 20, "All"] // change per page values here
        ],
        // set the initial value
        "pageLength": 10,
        "dom": "<'row'><'row'<'col-md-6 col-sm-12'l><'col-md-4 col-sm-12'f><'col-md-2 col-sm-12'B>r><'table-scrollable table-responsive't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",
        //"dom": "<'row' <'col-md-12'B>><'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r><'table-scrollable table-responsive't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>", // horizobtal scrollable datatable

        // Uncomment below line("dom" parameter) to fix the dropdown overflow issue in the datatable cells. The default datatable layout
        // setup uses scrollable div(table-scrollable table-responsive) with overflow:auto to enable vertical scroll(see: assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js). 
        // So when dropdowns used the scrollable div should be removed. 
        //"dom": "<'row' <'col-md-12'T>><'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r>t<'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",
      });
  }


  return {

    //main function to initiate the module
    init: function () {

      if (!jQuery().dataTable) {
        return;
      }
      /**
      *   CommonDatatable function used for: 
      *   application/index, users/index
      **/
           emailTemplatesListingTable();
           usersListingTable();
           cronJobListingTable();
      }
  };

}();

jQuery(document).ready(function() {
    TableDatatablesResponsive.init();
});


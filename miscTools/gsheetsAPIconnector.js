function fetchDataFromAPI() {
  var url = "https://demo.repfabric.com/api/public/v1.0/products";
  
  // Encode username and password for Basic Authorization
  var username = "admin";
  var password = "password";
  var encodedAuth = Utilities.base64Encode(username + ":" + password);
  
  var headers = {
    "Authorization": "Basic " + encodedAuth
  };
  
  var options = {
    "method" : "GET",
    "headers" : headers,
    "muteHttpExceptions" : true
  };
  
  var response = UrlFetchApp.fetch(url, options);
  var data = JSON.parse(response.getContentText());
  var sheet = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();
  
  // Check if data is an array and has at least one object
  if (Array.isArray(data) && data.length > 0) {
    var keys = Object.keys(data[0]); // Get keys from the first object to set as headers
    sheet.getRange(1, 1, 1, keys.length).setValues([keys]); // Set headers in the first row

    // Loop through each object and set values in the sheet
    for (var i = 0; i < data.length; i++) {
      var values = [];
      for (var j = 0; j < keys.length; j++) {
        values.push(data[i][keys[j]]);
      }
      sheet.getRange(i + 2, 1, 1, keys.length).setValues([values]);
    }
  } else {
    Logger.log("No data retrieved from the API or data format is not as expected.");
  }
}

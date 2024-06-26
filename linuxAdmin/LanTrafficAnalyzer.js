function logTraffic() {
  // Create a map to store the log entries
  const trafficLog = new Map();

  // Register an event listener for the "webRequest" event
  chrome.webRequest.onCompleted.addListener(
    function(details) {
      // Get the log entry for the request
      const logEntry = trafficLog.get(details.requestId);
      if (!logEntry) {
        return;
      }

      // Update the log entry with the response information
      logEntry.responseStatus = details.statusCode;
      logEntry.responseHeaders = details.responseHeaders;

      // Print the log entry to the console
      console.log(logEntry);

      // Write the log entry to a text file in the Downloads folder
      chrome.downloads.download({
        url: "data:text/plain," + encodeURIComponent(JSON.stringify(logEntry)),
        filename: "traffic_log.txt",
        conflictAction: "uniquify"
      });
    },
    {
      urls: ["<all_urls>"]
    }
  );

  chrome.webRequest.onBeforeSendHeaders.addListener(
    function(details) {
      // Create a new log entry for the request
      const logEntry = {
        requestId: details.requestId,
        requestMethod: details.method,
        requestUrl: details.url,
        requestHeaders: details.requestHeaders
      };

      // Store the log entry in the map
      trafficLog.set(details.requestId, logEntry);
    },
    {
      urls: ["<all_urls>"]
    },
    ["requestHeaders"]
  );
}

// Call the function to start monitoring traffic
logTraffic();

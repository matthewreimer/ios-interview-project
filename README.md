# iOS Interview Assignment

Please spend ***no more than 2 hours*** on this assignment! We do not want this to be a burden on you or to be a measure of the amount of free time that you have or how quickly you can write code. Please track the time you spend on this assignment and be prepared to share how long it took you to complete. If you do not complete the assignment within 2 hours, you will still have an opportunity to explain the parts that you did complete and to talk through how you would implement the remaining aspects.

## Assignment

Use the ESV’s public API to create a simple Bible search app. The app should consist of a single screen which provides a searchbox and displays a list of search results. Results will be fetched from the API, and all results should be cached locally in CoreData. Subsequent searches on the same query should retrieve the results from CoreData rather than from the API. In other words, the app should work without network access for any searches that have already been run before.

## Setting Up

We have already created a boilerplate project to get you started. The project already has CoreData configured, as well as a simple networking singleton for using the ESV API and some models for JSON deserialization. Feel free to adapt any of this as you see fit, but we recommend keeping it as is in order to allow as much time as possible for the assignment itself.

Note: The ESV API uses a paging feature where a max of 100 hits are returned for a single search. For the purposes of this assignment, ignore the paging functionality and proceed as if the first page contains all possible results.

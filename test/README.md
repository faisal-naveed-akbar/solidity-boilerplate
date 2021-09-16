## Integration Tests

These are the integration tests that are written in .js files. We are using mocha, chai, and mocha-chai-jest-snapshot node modules to make this working. 

### What are Snapshots?

Snapshot testing is a type of testing where running the test for the first time saves the results in a separate file (all those files are listed in the _snapshots_ folder). When the same test is run for the second time, it matches the results to those saved in the snapshot. Say, For example, 2+2 returns 4 for the first time, then you expect that it will return the same every time. In such a case where you expect same results every time, snapshot testing is a good way to go.

[Getting Started with mocha-chai-jest-snapshot](https://www.npmjs.com/package/mocha-chai-jest-snapshot?activeTab=readme)

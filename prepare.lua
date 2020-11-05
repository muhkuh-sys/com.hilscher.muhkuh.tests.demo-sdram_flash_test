local t = ...

-- Copy the tests.xml to the working folder.
t:copy{
  ['../../tests.xml'] = 'tests.xml'
}

-- Filter the testcase XML with the VCS ID.
t:filterVcsId('../..', '../../testcase.xml', 'testcase.xml')

return true

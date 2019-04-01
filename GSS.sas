PROC FORMAT;

  VALUE GSP001X
    9        = "No answer"
    8        = "Don't know"
    4        = "R pays none<vol.>"
    3        = "Too low"
    2        = "About right"
    1        = "Too high"
    0        = "Not applicable"
  ;
  VALUE GSP002X
    99       = "No answer"
    98       = "Don't know"
    13       = "Refused"
    12       = "$25000 or more"
    11       = "$20000 - 24999"
    10       = "$15000 - 19999"
    9        = "$10000 - 14999"
    8        = "$8000 to 9999"
    7        = "$7000 to 7999"
    6        = "$6000 to 6999"
    5        = "$5000 to 5999"
    4        = "$4000 to 4999"
    3        = "$3000 to 3999"
    2        = "$1000 to 2999"
    1        = "Lt $1000"
    0        = "Not applicable"
  ;
  VALUE GSP003X
    99       = "No answer"
    98       = "Don't know"
    13       = "Refused"
    12       = "$25000 or more"
    11       = "$20000 - 24999"
    10       = "$15000 - 19999"
    9        = "$10000 - 14999"
    8        = "$8000 to 9999"
    7        = "$7000 to 7999"
    6        = "$6000 to 6999"
    5        = "$5000 to 5999"
    4        = "$4000 to 4999"
    3        = "$3000 to 3999"
    2        = "$1000 to 2999"
    1        = "Lt $1000"
    0        = "Not applicable"
  ;
  VALUE GSP004X
    9999     = "No answer"
    9998     = "Don't know"
    0        = "Not applicable"
  ;
  VALUE GSP005X
    9999     = "No answer"
    9998     = "Don't know"
    0        = "Not applicable"
  ;
  VALUE GSP006X
    9        = "No answer"
    8        = "Don't know"
    5        = "Hs diploma after post hs classes"
    3        = "Other"
    2        = "Ged"
    1        = "High school diploma"
    0        = "Not applicable"
  ;
  VALUE GSP007X
    99       = "No answer"
    98       = "Don't know"
    97       = "Not applicable"
  ;
  VALUE GSP008X
    99       = "No answer"
    98       = "Don't know"
    89       = "89 or older"
  ;
  VALUE GSP009X
    9        = "No answer"
    8        = "Don't know"
    2        = "No"
    1        = "Yes"
    0        = "Not applicable"
  ;
  VALUE GSP010X
    99       = "No answer"
    98       = "Don't know"
    0        = "Not applicable"
  ;
  VALUE GSP011X
    9        = "No answer"
    5        = "Never married"
    4        = "Separated"
    3        = "Divorced"
    2        = "Widowed"
    1        = "Married"
  ;
  VALUE GSP012X
    9        = "No answer"
    8        = "Don't know"
    2        = "No"
    1        = "Yes"
    0        = "Not applicable"
  ;
  VALUE GSP013X
    99       = "No answer"
    98       = "Don't know"
    -1       = "Not applicable"
  ;
  VALUE GSP014X
    99       = "No answer"
    98       = "Don't know"
    -1       = "Not applicable"
  ;
  VALUE GSP015X
    9        = "No answer"
    8        = "Other"
    7        = "Keeping house"
    6        = "School"
    5        = "Retired"
    4        = "Unempl, laid off"
    3        = "Temp not working"
    2        = "Working parttime"
    1        = "Working fulltime"
    0        = "Not applicable"
  ;
  VALUE GSP016X
    4        = "Ballot d"
    3        = "Ballot c"
    2        = "Ballot b"
    1        = "Ballot a"
    0        = "Not applicable"
  ;


DATA GSS.GSS;

   LENGTH
      YEAR     20
      TAX      20
      RINCOME  20
      INCOME   20
      WHENCOL  20
      WHENHS   20
      DIPGED   20
      EDUC     20
      AGE      20
      DIVORCE  20
      AGEWED   20
      MARITAL  20
      PRESTIGE 20
      EVWORK   20
      HRS2     20
      HRS1     20
      WRKSTAT  20
      ID_      20
      BALLOT   20   ;

   LABEL
      YEAR     ="Gss year for this respondent                       "
      TAX      ="Rs federal income tax"
      RINCOME  ="Respondents income"
      INCOME   ="Total family income"
      WHENCOL  ="When received college degree"
      WHENHS   ="When received hs degree"
      DIPGED   ="Diploma, ged, or other"
      EDUC     ="Highest year of school completed"
      AGE      ="Age of respondent"
      DIVORCE  ="Ever been divorced or separated"
      AGEWED   ="Age when first married"
      MARITAL  ="Marital status"
      PRESTIGE ="Rs occupational prestige score  (1970)"
      EVWORK   ="Ever work as long as one year"
      HRS2     ="Number of hours usually work a week"
      HRS1     ="Number of hours worked last week"
      WRKSTAT  ="Labor force status"
      ID_      ="Respondent id number"
      BALLOT   ="Ballot used for interview"
   ;

   INPUT
      YEAR     1 - 20
      TAX      21 - 40
      RINCOME  41 - 60
      INCOME   61 - 80
      WHENCOL  81 - 100
      WHENHS   101 - 120
      DIPGED   121 - 140
      EDUC     141 - 160
      AGE      161 - 180
      DIVORCE  181 - 200
      AGEWED   201 - 220
      MARITAL  221 - 240
      PRESTIGE 241 - 260
      EVWORK   261 - 280
      HRS2     281 - 300
      HRS1     301 - 320
      WRKSTAT  321 - 340
      ID_      341 - 360
      BALLOT   361 - 380   ;

   FORMAT
      TAX      GSP001X.
      RINCOME  GSP002X.
      INCOME   GSP003X.
      WHENCOL  GSP004X.
      WHENHS   GSP005X.
      DIPGED   GSP006X.
      EDUC     GSP007X.
      AGE      GSP008X.
      DIVORCE  GSP009X.
      AGEWED   GSP010X.
      MARITAL  GSP011X.
      EVWORK   GSP012X.
      HRS2     GSP013X.
      HRS1     GSP014X.
      WRKSTAT  GSP015X.
      BALLOT   GSP016X.   ;

PROC CONTENTS DATA=GSS.GSS;

RUN;

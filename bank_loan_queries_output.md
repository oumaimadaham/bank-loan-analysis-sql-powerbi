# Bank Loan Dashboard SQL Output

This file contains the results of all SQL queries from `bank_loan_queries.sql`.

---

## Total Loan Applications
| | Total_Loan_Applications|
|--------|-------|
|1 | 38576 |

## Total Loan Applications Month-to-Date (MTD)
| | MTD_Total_Applications |
|--------|-------|
|1 | 4314 |

## Total Loan Applications Previous Month (PMTD)
| | PMTD_Total_Applications|
|--------|-------|
|1 | 4035 |


## Total Funded Amount
| | Total_Funded_Amount|
|--------|-------|
|1 | 435757075 |

## Total Funded Amount Month-to-Date (MTD)
| | MTD_Total_Funded_Amount|
|--------|-------|
|1 | 53981425 |

## Total Funded Amount Previous Month (PMTD)
| | PMTD_Total_Funded_Amount |
|--------|-------|
|1 | 47754825 |

## Total Amount Received
| | Total_Amount_Received|
|--------|-------|
|1 | 473070933 |

## Total Amount Received Month-to-Date (MTD)
| | MTD_Total_Amount_Received|
|--------|-------|
|1 | 58074380 |

## Total Amount Received Previous Month (PMTD)
| | PMTD_Total_Amount_Received |
|--------|-------|
|1 | 50132030 |

## Average Interest Rate
| | Average_Interest_Rate |
|--------|-------|
|1 | 12.1 |

## Average Interest Rate Month-to-Date (MTD)
| | MTD_Average_Interest_Rate |
|--------|-------|
|1 | 12.4 |

## Average Interest Rate Previous Month (PMTD)
| | PMTD_Average_Interest_Rate |
|--------|-------|
|1 | 11.9 |

## Average DTI 
| | Average_DTI |
|--------|-------|
|1 | 13.3 |

## Average DTI Rate Month-to-Date (MTD)
| | MTD_Average_DTI_Rate |
|--------|-------|
|1 | 13.7 |

## Average DTI Rate Previous Month (PMTD)
| | PMTD_Average_DTI_Rate |
|--------|-------|
|1 | 13.3 |

## Good Loan Applications
| | Good_Loan_Applications|
|--------|-------|
|1 | 33243|

## Good Loan Funded Amount
| | Good_Loan_Funded_Amount|
|--------|-------|
|1 | 370224850|

## Good Loan Received Amount
| | Good_Loan_Received_Amount|
|--------|-------|
|1 | 435786170|

## Good Loan Percentage
| | Good_Loan_Percentage|
|--------|-------|
|1 | 86|

## Bad Loan Applications
| | Bad_Loan_Applications|
|--------|-------|
|1 | 5333|

## Bad Loan Funded Amount
| | Bad_Loan_Funded_Amount|
|--------|-------|
|1 | 65532225|

## Bad Loan Received Amount
| | Bad_Loan_Received_Amount|
|--------|-------|
|1 | 37284763|

## Bad Loan Percentage
| | Bad_Loan_Percentage|
|--------|-------|
|1 | 13|

## Loan Status 
| loan_status|Loan_Applications| Total_Funded_Amount|Total_Received_Amount|Interest_Rate|DTI
|-------|--------|-------|--------|-------|-------|
|Fully Paid|32145|351358350|411586256|11.6|13.2|
|Current|1098|18866500|24199914|15.1|14.7|
|Charged Off|5333|65532225|37284763|13.9|14|

## Loan Status Metrics Month-to-Date (MTD)

| loan_status|MTD_Total_Funded_Amount|MTD_Total_Received_Amount|
|-------|--------|-------|
| Fully Paid|41302025|47815851|
|Current|3946625|4934318|
|Charged Off|8732775|5324211|

## Loan Metrics by Month

| Month     | Total Loan Applications | Total Funded Amount | Total Received Amount |
|-----------|------------------------|-------------------|--------------------|
| January   | 2332                   | 25,031,650        | 27,578,836         |
| February  | 2279                   | 24,647,825        | 27,717,745         |
| March     | 2627                   | 28,875,700        | 32,264,400         |
| April     | 2755                   | 29,800,800        | 32,495,533         |
| May       | 2911                   | 31,738,350        | 33,750,523         |
| June      | 3184                   | 34,161,475        | 36,164,533         |
| July      | 3366                   | 35,813,900        | 38,827,220         |
| August    | 3441                   | 38,149,600        | 42,682,218         |
| September | 3536                   | 40,907,725        | 43,983,948         |
| October   | 3796                   | 44,893,800        | 49,399,567         |
| November  | 4035                   | 47,754,825        | 50,132,030         |
| December  | 4314                   | 53,981,425        | 58,074,380         |

## Loan Metrics by City/State

| State | Total Loan Applications | Total Funded Amount | Total Received Amount |
|-------|------------------------|-------------------|--------------------|
| UT    | 252   | 2,849,225  | 2,952,412  |
| NC    | 759   | 8,787,575  | 9,534,813  |
| WI    | 446   | 5,070,450  | 5,485,161  |
| MA    | 1310  | 15,051,000 | 16,676,279 |
| MI    | 685   | 7,829,900  | 8,543,660  |
| TN    | 17    | 162,175    | 141,522    |
| NH    | 161   | 1,917,900  | 2,101,386  |
| AK    | 78    | 1,031,800  | 1,108,570  |
| OK    | 293   | 3,365,725  | 3,712,649  |
| KY    | 320   | 3,504,100  | 3,792,530  |
| CO    | 770   | 8,976,000  | 9,845,810  |
| NV    | 482   | 5,307,375  | 5,451,443  |
| SD    | 63    | 606,150    | 656,514    |
| PA    | 1482  | 15,826,525 | 17,462,908 |
| WV    | 167   | 1,830,525  | 1,991,936  |
| GA    | 1355  | 15,480,325 | 16,728,040 |
| RI    | 196   | 1,883,025  | 2,001,774  |
| IN    | 9     | 86,225     | 85,521     |
| DC    | 214   | 2,652,350  | 2,921,854  |
| MD    | 1027  | 11,911,400 | 12,985,170 |
| OR    | 436   | 4,720,150  | 4,966,903  |
| CT    | 730   | 8,435,575  | 9,357,612  |
| AR    | 236   | 2,529,700  | 2,777,875  |
| MN    | 592   | 6,302,600  | 6,750,746  |
| AL    | 432   | 4,949,225  | 5,492,272  |
| ID    | 6     | 59,750     | 65,329     |
| TX    | 2664  | 31,236,650 | 34,392,715 |
| NM    | 183   | 1,916,775  | 2,084,485  |
| ME    | 3     | 9,200      | 10,808     |
| IL    | 1486  | 17,124,225 | 18,875,941 |
| MO    | 660   | 7,151,175  | 7,692,732  |
| SC    | 464   | 5,080,475  | 5,462,458  |
| DE    | 110   | 1,138,100  | 1,269,136  |
| FL    | 2773  | 30,046,125 | 31,601,905 |
| CA    | 6894  | 78,484,125 | 83,901,234 |
| WY    | 79    | 890,750    | 1,046,050  |
| HI    | 170   | 1,850,525  | 2,080,184  |
| OH    | 1188  | 12,991,375 | 14,330,148 |
| NE    | 5     | 31,700     | 24,542     |
| VT    | 54    | 504,100    | 534,973    |
| NY    | 3701  | 42,077,050 | 46,108,181 |
| MS    | 19    | 139,125    | 149,342    |
| NJ    | 1822  | 21,657,475 | 23,425,159 |
| IA    | 5     | 56,450     | 64,482     |
| KS    | 260   | 2,872,325  | 3,247,394  |
| LA    | 426   | 4,498,900  | 5,001,160  |
| WA    | 805   | 8,855,525  | 9,531,739  |
| AZ    | 833   | 9,206,000  | 10,041,986 |
| VA    | 1375  | 15,982,650 | 17,711,443 |
| MT    | 79    | 829,525    | 892,047    |

## Loan Metrics by Term
|Term|Total_Loan_Application|Total_Funded_Aount|Total_Received_Amount|
|-------|-------|-------|-------|
|36 months|28237|273041225|294709458|
|60 months|10339|162715850|178361475|

## Loan Metrics by Employment Length
| Employment Length | Total Loan Applications | Total Funded Amount | Total Received Amount |
|------------------|------------------------|-------------------|--------------------|
| < 1 year         | 4575   | 44,210,625  | 47,545,011  |
| 1 year           | 3229   | 32,883,125  | 35,498,348  |
| 2 years          | 4382   | 44,967,975  | 49,206,961  |
| 3 years          | 4088   | 43,937,850  | 47,551,832  |
| 4 years          | 3428   | 37,600,375  | 40,964,850  |
| 5 years          | 3273   | 36,973,625  | 40,397,571  |
| 6 years          | 2228   | 25,612,650  | 27,908,658  |
| 7 years          | 1772   | 20,811,725  | 22,584,136  |
| 8 years          | 1476   | 17,558,950  | 19,025,777  |
| 9 years          | 1255   | 15,084,225  | 16,516,173  |
| 10+ years        | 8870   | 116,115,950 | 125,871,616 |

## Loan Metrics by Purpose
| Purpose             | Total Loan Applications | Total Funded Amount | Total Received Amount |
|--------------------|------------------------|-------------------|--------------------|
| renewable_energy    | 94     | 845,750    | 898,931    |
| educational         | 315    | 2,161,650  | 2,248,380  |
| vacation            | 352    | 1,967,950  | 2,116,738  |
| house               | 366    | 4,824,925  | 5,185,538  |
| moving              | 559    | 3,748,125  | 3,999,899  |
| medical             | 667    | 5,533,225  | 5,851,372  |
| wedding             | 928    | 9,225,800  | 10,266,856 |
| car                 | 1497   | 10,223,575 | 11,324,914 |
| small business      | 1776   | 24,123,100 | 23,814,817 |
| major purchase      | 2110   | 17,251,600 | 18,676,927 |
| home improvement    | 2876   | 33,350,775 | 36,380,930 |
| other               | 3824   | 31,155,750 | 33,289,676 |
| credit card         | 4998   | 58,885,175 | 65,214,084 |
| Debt consolidation  | 18214  | 232,459,675| 253,801,871 |

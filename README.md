README.md

# Test

# CS Types - CityScope Types:

CityScope (CS) Types are the basic land-use units that can be combined and arranged to represent urban environments within the CityScope platform. CS Types are assigned to each cell within the grid that is overlaid over the urban area of enquiry. The grid provides unified segmentation, scale and a level of abstraction that can be easily manipulated by users. Each cell within the grid can either be fixed or dynamic, depending on project limits; fixed cells within a grid are not intended to be changeable by users; dynamic cells are intended for manipulation to interact with the CityScope platform. Interactions take place as users manipulate Types within the project area. 

![CS BOXEL](BOXEL.jpg)

CS Types are represented by tiles that are set within the cells of a grid. At minimum, each tile must include land use and economic activity data, which can be complemented with additional dimensions of information that are assigned by users during the commissioning of a table. Additional information that can be assigned to a CS Type includes, but is not limited to, the acoustic characteristics, demographic information, and/or the utilization of a type. 

![LEGO 3Types](200713_3Types3.jpg)

To standardize the analysis and visualization modules, the CityScope platform uses unified data classifications to define each Type. CS Types may differ from project to project depending on the programming and intervention under investigation. To standardize how CS Types are defined, the classification uses unified dictionary of attributes that include, but are not limited to, land-use and economic activity, as defined by the American Planning Association, Land-Based Classification Standards or LBCS, and the North American Industry Classification System or NAICS, for the associated economic activity. Additional characteristics can be added when project specific modules are being used. 

# LBCS - Land Use Classification Notation:

The LBCS classification system extends the notion of land uses by refining traditional categories into multiple dimensions, including activity, function, building type, site development character, and ownership constraints. Each dimension has its own set of categories and subcategories for classifying land uses. By classifying every land-use across multiple dimensions, users can have precise control of land-use classifications. Codes are generated using a numerical classification outlined in the LBCS manual: 

https://planning-org-uploaded-media.s3.amazonaws.com/document/LBCS.pdf

## Schema Description:

* X 0 0 0  - First level classification - General
* XX 0 0  - 2nd level - Type
* XXX 0  - 3rd level - Activity
* XXXX  - 4th level - Specific Activity  

Most CS Types may only include Activity dimensions, however additional LBCS information can be added. 

# NAICS - Economic Activity Classification Notation: 

In addition to the LBCS classifications, the NAICS codes are a standard used by Federal statistical agencies in classifying business establishments for the purpose of collecting, analyzing, and publishing statistical data related to the U.S. business economy.Codes are generated using a numerical classification outlined in the NAICS manual: https://www.census.gov/eos/www/naics/2017NAICS/2017_NAICS_Manual.pdf

## chema Description:

* X 0 0 0 0 - First level classification - Industry Sector (20 broad sectors up from 10 SIC)
* XX 0 0 0  - 2nd level - Industry Sub sector
* XXX 0 0  - 3rd level - Industry Group
* XXXX 0  - 4th level - Industry

# Sample CS Types:  

As an example exercise we will define 3 of the most popular CS types: A simple single use tile like a park, a single use tile of housing, and a multi use tail mixing office and shopping:

## Park

No floors, 100% of park activity. NAICS mapping = 712190. LBCS mapping = 7000


![LEGO Park3](Park3.jpg)

```json
{
  "NAICS": [
    {
      "P": 1,
      "use": [
        {
          "712190": 1
        }
       ],
  "LBCS": [
    {
      "P": 1,
      "use": [
        {
          "7000": 1
        }
      ]
    }
  ]
}
```

## Household activities (Residential activities)

Individual housing building, 100% of Residential activities. NAICS mapping = null (Since NAICS is the "standard used by Federal statistical agencies in classifying business establishments"; housing doesn't have a correlation in NAICS). LBCS mapping = 1100

![LEGO House3](House3.jpg)

```json
{
  "NAICS":null,
  "LBCS":
  [
    {
      "P": 1,
      "use": [
        {
          "1100": 1
        }
      ]
    }
  ]
}
```
## Mixed use Building (Finance + Public Administration + Shopping + Restaurants)

Office and Shopping building: 80% of Financial activities, 20% of Restaurant and shopping activities. NAICS mapping =  520000 finance, 920000 Public Administration, 440000 + 45000 shopping, and 720000 restaurant. LBCS mapping = 2200 finance,  6200 + 6300 Public Administration, 2100 shopping, and 2500 restaurant

* The lower 20% of floors are devoted to a mix of shopping 75% and restaurants 25%
* The upper 80% of floors and is devoted to a mix of finance 50% and Public Administration 50%

![LEGO Office3](Office3.jpg)

```json
{
  "NAICS": [
    {
      "P": 0.2,
      "use": [
        {
          "720000": 0.25,          
          "440000": 0.40,
          "450000": 0.35
        }
      ]
    },
    {
      "P": 0.8,
      "use": [
        {
          "520000": 0.5,
          "920000": 0.5
        }
      ],
  "LBCS": [
    {
      "P": 0.2,
      "use": [
        {
          "2100": 0.5,          
          "2500": 0.5
       }
      ]
    },
    {
      "P": 0.8,
      "use": [
        {
          "2200": 0.5,
          "6200": 0.25,
          "6300": 0.25
        }

    }
  ]
}
```

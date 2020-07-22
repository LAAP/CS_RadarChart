README.md

# Test

# CS Types - CityScope Types:

CityScope (CS) Types are the basic land-use units that can be combined and arranged to represent urban environments within the CityScope platform. CS Types are assigned to each cell within the grid that is overlaid over the urban area of enquiry. The grid provides unified segmentation, scale and a level of abstraction that can be easily manipulated by users. Each cell within the grid can either be fixed or dynamic, depending on project limits; fixed cells within a grid are not intended to be changeable by users; dynamic cells are intended for manipulation to interact with the CityScope platform. Interactions take place as users manipulate Types within the project area. 

CS Types are represented by tiles that are set within the cells of a grid. At minimum, each tile must include land use and economic activity data, which can be complemented with additional dimensions of information that are assigned by users during the commissioning of a table. Additional information that can be assigned to a CS Type includes, but is not limited to, the acoustic characteristics, demographic information, and/or the utilization of a type. 

To standardize the analysis and visualization modules, the CityScope platform uses unified data classifications to define each Type. CS Types may differ from project to project depending on the programming and intervention under investigation. To standardize how CS Types are defined, the classification uses unified dictionary of attributes that include, but are not limited to, land-use and economic activity, as defined by the American Planning Association, Land-Based Classification Standards or LBCS, and the North American Industry Classification System or NAICS, for the associated economic activity. Additional characteristics can be added when project specific modules are being used. 

# LBCS - Land Use Classification Notation:

The LBCS classification system extends the notion of land uses by refining traditional categories into multiple dimensions, including activity, function, building type, site development character, and ownership constraints. Each dimension has its own set of categories and subcategories for classifying land uses. By classifying every land-use across multiple dimensions, users can have precise control of land-use classifications. Codes are generated using a numerical classification outlined in the LBCS manual: 

https://planning-org-uploaded-media.s3.amazonaws.com/document/LBCS.pdf

## Schema Description:

* X 0 0 0  - First level classification - General
* XX 0 0  - 2nd level - Type
* XXX 0  - 3rd level - Activity
* XXXX  - 4th level - Specific Activity  

# Exporting in Other Projection Systems

Sites and surveys are often in a specific local or custom coordinate system to make measurements more accurate and comply with standards set for the sites.

The ROCK Cloud allows users to import, view, and export their data using a custom coordinate system based on EPSG codes, or custom GCPs.

## Local Projections

In addition to common global coordinate systems such as WGS-84 (EPSG 4326) and Web-Mercator (EPSG 3857), there are hundreds of other projections describing local coordinate systems you can export data in. To find out the correct EPSG code for your project follow these steps:

**Find your EPSG Code**

EPSG codes are unique identifiers describing the desired projection. The EPSG code for almost any projection can be found on the [Spatial Reference Organization's website](https://spatialreference.org/ref/).

## Custom Coordinate Systems

The ROCK Cloud also allows you to specify your own coordinate system. This is useful for site-specific reference systems based on a location unique to your site. This is done by:

1. Selecting 'Custom Site Projection' in the 'Desired Data Projection' field, and
2. Creating three or more Ground Control Points where the GCP specifies the point in a well known projection using an EPSG code and then specifies the equivalent coordinate in the local custom projection.

The ROCK cloud will use this information to create a 4x4 transformational matrix to transform your data. The re-projection pipeline looks like this:

**LiDAR Data Projection (uploaded projection)** --> **GCP Projection** --> **Custom 4x4 transformational matrix Projection**
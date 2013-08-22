JZLocationConverter
===================

WGS-84世界标准坐标、GCJ-02中国国测局、BD-09百度坐标系转换
目前有
WGS-84->GCJ-02
+ (CLLocationCoordinate2D)wgs84ToGcj02:(CLLocationCoordinate2D)location;
WGS-84->BD-09
+ (CLLocationCoordinate2D)wgs84ToBd09:(CLLocationCoordinate2D)location;
GCJ-02->BD-09
+ (CLLocationCoordinate2D)gcj02ToBd09:(CLLocationCoordinate2D)location;
BD-09->GCJ-02
+ (CLLocationCoordinate2D)bd09ToGcj02:(CLLocationCoordinate2D)location;

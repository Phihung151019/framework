.class public Lcom/samsung/android/knox/location/GeofenceFactory;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist createGeofence(ILandroid/os/Parcel;)Lcom/samsung/android/knox/location/Geofence;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/knox/location/LinearGeofence;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/location/LinearGeofence;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/knox/location/PolygonalGeofence;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/location/PolygonalGeofence;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/samsung/android/knox/location/CircularGeofence;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/location/CircularGeofence;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.class Lcom/android/location/provider/GeocodeProvider$1;
.super Landroid/location/provider/IGeocodeProvider$Stub;
.source "GeocodeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/GeocodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/GeocodeProvider;


# direct methods
.method constructor <init>(Lcom/android/location/provider/GeocodeProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/GeocodeProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/android/location/provider/GeocodeProvider$1;->this$0:Lcom/android/location/provider/GeocodeProvider;

    invoke-direct {p0}, Landroid/location/provider/IGeocodeProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .locals 20
    .param p1, "request"    # Landroid/location/provider/ForwardGeocodeRequest;
    .param p2, "callback"    # Landroid/location/provider/IGeocodeCallback;

    .line 75
    move-object/from16 v1, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 76
    .local v14, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v15, p0

    iget-object v2, v15, Lcom/android/location/provider/GeocodeProvider$1;->this$0:Lcom/android/location/provider/GeocodeProvider;

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/location/provider/ForwardGeocodeRequest;->getLocationName()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/location/provider/ForwardGeocodeRequest;->getLowerLeftLatitude()D

    move-result-wide v4

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/location/provider/ForwardGeocodeRequest;->getLowerLeftLongitude()D

    move-result-wide v6

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/location/provider/ForwardGeocodeRequest;->getUpperRightLatitude()D

    move-result-wide v8

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/location/provider/ForwardGeocodeRequest;->getUpperRightLongitude()D

    move-result-wide v10

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/location/provider/ForwardGeocodeRequest;->getMaxResults()I

    move-result v12

    new-instance v13, Landroid/location/GeocoderParams;

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/location/provider/ForwardGeocodeRequest;->getCallingUid()I

    move-result v0

    .line 86
    move-object/from16 v16, v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/provider/ForwardGeocodeRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 87
    move-object/from16 v17, v3

    invoke-virtual/range {p1 .. p1}, Landroid/location/provider/ForwardGeocodeRequest;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 88
    move-wide/from16 v18, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/provider/ForwardGeocodeRequest;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v13, v0, v2, v3, v4}, Landroid/location/GeocoderParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 77
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-wide/from16 v4, v18

    invoke-virtual/range {v2 .. v14}, Lcom/android/location/provider/GeocodeProvider;->onGetFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "error":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 92
    :try_start_0
    invoke-interface {v1, v2}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {v1, v14}, Landroid/location/provider/IGeocodeCallback;->onResults(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 99
    :goto_1
    return-void
.end method

.method public reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .locals 12
    .param p1, "request"    # Landroid/location/provider/ReverseGeocodeRequest;
    .param p2, "callback"    # Landroid/location/provider/IGeocodeCallback;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 50
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v1, p0, Lcom/android/location/provider/GeocodeProvider$1;->this$0:Lcom/android/location/provider/GeocodeProvider;

    .line 52
    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getLatitude()D

    move-result-wide v2

    .line 53
    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getLongitude()D

    move-result-wide v4

    .line 54
    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getMaxResults()I

    move-result v6

    new-instance v7, Landroid/location/GeocoderParams;

    .line 56
    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getCallingUid()I

    move-result v0

    .line 57
    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    .line 58
    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 59
    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v7, v0, v9, v10, v11}, Landroid/location/GeocoderParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 51
    invoke-virtual/range {v1 .. v8}, Lcom/android/location/provider/GeocodeProvider;->onGetFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 63
    :try_start_0
    invoke-interface {p2, v1}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {p2, v8}, Landroid/location/provider/IGeocodeCallback;->onResults(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 70
    :goto_1
    return-void
.end method

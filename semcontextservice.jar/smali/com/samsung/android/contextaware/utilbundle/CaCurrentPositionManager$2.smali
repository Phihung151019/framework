.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 19
    .param p1, "location"    # Landroid/location/Location;

    .line 361
    move-object/from16 v0, p0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v4

    .line 365
    .local v4, "utcTime":[I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 367
    .local v5, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 369
    .local v7, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    .line 371
    .local v1, "altitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v13

    .line 373
    .local v13, "speed":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v14

    .line 375
    .local v14, "accuracy":F
    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-$$Nest$fgetmPrePosition(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v3

    .line 377
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v9

    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-$$Nest$fgetmPrePosition(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v11

    .line 375
    move-wide/from16 v17, v9

    move-wide v9, v5

    move-wide/from16 v5, v17

    move-wide/from16 v17, v11

    move-wide v11, v7

    move-wide/from16 v7, v17

    .end local v5    # "latitude":D
    .end local v7    # "longitude":D
    .local v9, "latitude":D
    .local v11, "longitude":D
    invoke-static/range {v5 .. v12}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v5

    .line 381
    move-wide v7, v11

    .end local v11    # "longitude":D
    .local v5, "distance":D
    .restart local v7    # "longitude":D
    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-$$Nest$mgetGpsSatellites(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Ljava/util/Iterator;

    move-result-object v16

    .line 383
    .local v16, "gpsSatellites":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    const/4 v3, 0x0

    .line 387
    .local v3, "satelliteCount":I
    if-eqz v16, :cond_2

    .line 389
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 391
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/GpsSatellite;

    .line 393
    .local v11, "satellite":Landroid/location/GpsSatellite;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 395
    add-int/lit8 v3, v3, 0x1

    .line 399
    .end local v11    # "satellite":Landroid/location/GpsSatellite;
    :cond_0
    goto :goto_0

    .line 389
    :cond_1
    move v15, v3

    goto :goto_1

    .line 387
    :cond_2
    move v15, v3

    .line 415
    .end local v3    # "satelliteCount":I
    .local v15, "satelliteCount":I
    :goto_1
    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-$$Nest$fgetmGpsInfo(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v3

    cmpl-float v3, v3, v14

    if-ltz v3, :cond_3

    .line 417
    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-$$Nest$fgetmGpsInfo(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v3

    move-wide v11, v5

    move-wide v5, v9

    move-wide v9, v1

    move-object v2, v3

    .end local v1    # "altitude":D
    .local v5, "latitude":D
    .local v9, "altitude":D
    .local v11, "distance":D
    const/4 v3, 0x1

    invoke-virtual/range {v2 .. v15}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->setPosition(I[IDDDDFFI)V

    goto :goto_2

    .line 415
    .end local v11    # "distance":D
    .restart local v1    # "altitude":D
    .local v5, "distance":D
    .local v9, "latitude":D
    :cond_3
    move-wide v11, v5

    move-wide v5, v9

    move-wide v9, v1

    .line 425
    .end local v1    # "altitude":D
    .local v5, "latitude":D
    .local v9, "altitude":D
    .restart local v11    # "distance":D
    :goto_2
    const/high16 v1, 0x41800000    # 16.0f

    cmpg-float v1, v14, v1

    if-gtz v1, :cond_4

    .line 427
    iget-object v1, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->notifyCurrentPositionObserver()V

    .line 431
    :cond_4
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 477
    return-void
.end method

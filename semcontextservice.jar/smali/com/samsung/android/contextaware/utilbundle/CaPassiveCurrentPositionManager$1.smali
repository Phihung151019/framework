.class Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 18
    .param p1, "location"    # Landroid/location/Location;

    .line 141
    move-object/from16 v0, p0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v4

    .line 143
    .local v4, "utcTime":[I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 144
    .local v5, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 145
    .local v7, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    .line 146
    .local v1, "altitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v13

    .line 147
    .local v13, "speed":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v14

    .line 148
    .local v14, "accuracy":F
    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->-$$Nest$fgetmPrePosition(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v3

    .line 149
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v9

    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->-$$Nest$fgetmPrePosition(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v11

    .line 148
    move-wide/from16 v16, v9

    move-wide v9, v5

    move-wide/from16 v5, v16

    move-wide/from16 v16, v11

    move-wide v11, v7

    move-wide/from16 v7, v16

    .end local v5    # "latitude":D
    .end local v7    # "longitude":D
    .local v9, "latitude":D
    .local v11, "longitude":D
    invoke-static/range {v5 .. v12}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v5

    .line 151
    move-wide v7, v11

    .end local v11    # "longitude":D
    .local v5, "distance":D
    .restart local v7    # "longitude":D
    const/4 v3, 0x1

    .line 153
    .local v3, "type":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    const-string v12, "network"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 155
    const/4 v3, 0x2

    .line 161
    :cond_0
    iget-object v11, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->-$$Nest$fgetmGpsInfo(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v11

    iget-object v12, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v12}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->-$$Nest$fgetmSatelliteCount(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)I

    move-result v15

    move-wide/from16 v16, v1

    move-object v2, v11

    move-wide v11, v5

    move-wide v5, v9

    move-wide/from16 v9, v16

    .end local v1    # "altitude":D
    .local v5, "latitude":D
    .local v9, "altitude":D
    .local v11, "distance":D
    invoke-virtual/range {v2 .. v15}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->setPosition(I[IDDDDFFI)V

    .line 163
    move-wide v1, v9

    move-wide v9, v5

    .end local v5    # "latitude":D
    .restart local v1    # "altitude":D
    .local v9, "latitude":D
    const/high16 v5, 0x45960000    # 4800.0f

    cmpg-float v5, v14, v5

    if-gtz v5, :cond_1

    .line 164
    iget-object v5, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    iget-object v6, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->-$$Nest$fgetmGpsInfo(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->notifyPassiveCurrentPositionObserver(Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;)V

    .line 166
    :cond_1
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .line 170
    const-string v0, "Location service is disabled"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .line 131
    const-string v0, "Location service is enabled"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 176
    return-void
.end method

.class Lcom/sec/tmodiagnostics/TrafficStateDatabaseController$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "TrafficStateDatabaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConnectEvent(Ljava/lang/String;IJI)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .locals 11

    .line 340
    const-string p0, "-1"

    const-string p2, ""

    :try_start_0
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$sfgetobjTrafficStats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xc8

    const-string v2, ", mInsertList= "

    const/4 v3, 0x0

    if-ge v0, v1, :cond_8

    :try_start_1
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smismInsertList()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smisTMONetworkCode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDnsEvent():  objTrafficStats.size= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$sfgetobjTrafficStats()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smismInsertList()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smlog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 342
    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smsetmInsertDb(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 343
    const-string v1, "000.000.00.00"

    if-eqz p5, :cond_0

    :try_start_2
    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/16 v4, 0xa

    move/from16 v5, p6

    if-le v5, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-nez v4, :cond_2

    .line 348
    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smgetMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 350
    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    :goto_2
    if-ge v3, v4, :cond_4

    .line 353
    aget-object v5, p5, v3

    if-eqz v5, :cond_3

    .line 354
    invoke-static {v5}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smgetMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 357
    :cond_4
    :goto_3
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smgetCellId()J

    move-result-wide v3

    .line 358
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smgetRsrp()F

    move-result v5

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 361
    invoke-static {v2}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smgetIPDNS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smisWifiConnected()Z

    move-result v8

    if-nez v8, :cond_6

    .line 364
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smgetTechType()Ljava/lang/String;

    move-result-object p0

    .line 365
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$sfgetmPreviousCellID()J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-eqz v8, :cond_5

    .line 366
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smbandFromCP()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$sfputbandNumber(Ljava/lang/String;)V

    .line 367
    :cond_5
    invoke-static {v3, v4}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$sfputmPreviousCellID(J)V

    goto :goto_4

    .line 369
    :cond_6
    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$sfputbandNumber(Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    .line 370
    invoke-static {v8, v9}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$sfputmPreviousCellID(J)V

    .line 373
    :goto_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 374
    const-string v9, "cellId"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v3, "rsrp"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 376
    const-string v3, "techType"

    invoke-virtual {v8, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v3, "networkDetail"

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smgetNetworkDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string p0, "bandNumber"

    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$sfgetbandNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string p0, "timestamp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string p0, "transactionID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string p0, "DNSType"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string p0, "IPAddress"

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string p0, "responseTime"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, p7

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string p0, "responseCode"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string p0, "consumed"

    const-string p1, "0"

    invoke-virtual {v8, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$sfgetmFotaUpdated()I

    move-result p0

    if-ne p0, v0, :cond_7

    .line 387
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$sfgetobjTrafficStats()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 388
    :cond_7
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$sfgetobjTrafficStats()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 390
    :cond_8
    invoke-static {v3}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smsetmInsertList(Z)V

    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onDnsEvent(): Max List Size= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$sfgetobjTrafficStats()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smismInsertList()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mInsertDb= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smismInsertDb()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 391
    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smismInsertDb()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 394
    invoke-static {v3}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smsetmInsertDb(Z)V

    .line 395
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$sminsertValues()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 399
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDnsEvent(): Exception in Insertion"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->-$$Nest$smlog(Ljava/lang/String;)V

    :cond_9
    return-void
.end method
